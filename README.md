# Football App

A technical test example to display data from a football competition.

## The brief

Create a Flutter app (iOS and Android) that will display a football team which
won most matches in last 30 days. If competition has already finished, then
use date from the last played game. Select any available league you like.
Please, use [football-data.org](https://www.football-data.org/) API as data
source.

Requirements:

* Call the web service with your parameters and process the results.
* You can use any available resource and as many as you like.
* HINT: you probably would need to use 'Match' and 'Team' resources.

Display results in a UI:

* Should display team's title.
* Can list any extra data available (logo, address, manager etc.).
* It's up to you how you will display the data. A clean and simple UI is probably best.
* Should work in landscape and portrait as well as tablet and phone.
* Validate your code works.

Notes:

* It is suggested that the UI is as minimal as possible.
* The exercise isn't to show how good a UI designer you are but how you craft
code and how much you understand Flutter development.
* You need to submit the source code that can be built following your
instructions and also a compiled APK.

## Implementation

Although this is just a small app that doesn't do very much, its architecture
is designed to support a much more full-featured codebase.  Some people like
to visualise an app as having components split into layers, such as business
or domain logic, data sources and adapters for accessing them, and maybe a
presentation layer to deal with user interactions.

There are a couple of goals here.  Firstly, it would be good if the codebase
was easy to maintain.  Splitting things up into layers can help with that.

Secondly, we want to be able to write automated tests for 100% of the code
if possible.  Sometimes it's not feasible to cover every source line, but we
should be able to get into the high 90s percent coverage quite easily.

### Domain layer

Ideally everything revolves around the domain logic, which has no
dependencies and is hopefully quite independent of data sources and how
content is presented to the user.  It's straightforward for the UI to depend
on the domain, but to prevent the domain having any dependencies in the data
layer, we need to create interfaces for the data repositories to implement.
This  dependency inversion helps to isolate the domain layer.

Along with interfaces, the domain layer also contains entities and stories.
Entities are the main objects of the domain, matches, teams, players and so
on.  Stories describe operations concerning the entities, such as downloading
a list of recent matches from a remote server.

Object-oriented programming purists are probably not going to like this as we
are separating code from the data on which it operates, an object anti-pattern
really.  In that case, there's no reason why stories could not become
integrated with the entities to which they pertain, if that seems more
sensible.

An entity could also expose the relevant interfaces it needs for interactions
with the data layer.

### Data layer

The app needs to consume a RESTful API from
[api.football-data.org](https://api.football-data.org/) that returns a JSON
document of recent matches in a given competition.  We should also specify a
filter so that only the last 30 days of matches are included in the result and
the request header needs to include an X-Auth-Token line to access the API.

[Dio](https://pub.dev/packages/dio) is used to make GET requests to the
server and we use Flutter's code generation with the
[JSON Serializable](https://pub.dev/packages/json_serializable) package to
create routines to help serialise and deserialise classes and JSON maps.

The generated files are checked into this repo, but to regenerate after making
changes, use:

        flutter pub run build_runner build

There are mapper classes to turn the JSON classes in the API to entities used
by the domain.

A repository class implements the matches interface provided by the domain
layer so that this can be used by a story.  The implementation is injected
into the story by GetIt, a service locator object that can lazily load repo
singletons as needed.

### UI

There's only one screen visible in the app, a home page that displays a column
text widgets in the usual way.  To kick off a download and return results to
this page, we invoke a domain story through the model class of a change
notifier provider, as this operation is asynchronous and we would like the
notifier to cause a rebuild of the result text widget when the most winning
team is found.

It's a bit unnecessary to use a change notifier provider here, we could have
used a future builder to manage the asynchronous wait and rebuild.  But in
cases where results might be needed in several places in the widget tree,
providers might be easier to manage.

### Entry point

Execution starts from the main() function as always, and here we just need
to initialise the service locator before starting the top-level app widget.

## Testing

Flutter provides a unit-testing framework for Dart code and also widget tests
for higher-level user interaction tests.  There's a third test runner option
for testing against pre-built apps but this seems to be less favoured by the
Flutter team at Google these days.

Widget tests run in a local Dart VM like unit tests and are very powerful in
terms of covering a lot of code with small test classes.  One strategy to get
high coverage quite efficiently could be to use widget tests first and then
fill in the gaps with unit tests where organising a specific widget test case
would be hard.

We want our tests to be robust and preferably not depend on any external
services.  Since we are injecting Dio into the app with GetIt, we can override
this process with a version of Dio that returns fake responses to particular
requests.  There is an HttpMock class that implements a fake response to
the GET request we make to the football API and this is used in a widget test
at the highest level in the app.

To run all tests and record coverage information, use

        flutter test test --coverage

To turn coverage data into an HTML report, you will need lcov, and there
are some [instructions for installing on Mac OS and Linux](https://stackoverflow.com/questions/50789578/how-can-the-code-coverage-data-from-flutter-tests-be-displayed).
Once installed, use this to generate the HTML

        genhtml coverage/lcov.info -o coverage/html

I've checked in the HTML report (coverage/html/index.html) so you don't need
to use lcov.  

We don't have 100% test coverage partly because I have not implemented tests
for every JSON class (although there is one example to show how this would be
done, test/data/adaptor/json/coach_test.dart), and also because a certificate
error on the server requires disabling the certificate validation check in
Dio.  That code will not be run when we use our fake Dio responses.

## Releases

Although we would not normally check in binaries, there is an APK for Android
devices in the releases directory.  You can side-load this onto your device as
you normally would.
