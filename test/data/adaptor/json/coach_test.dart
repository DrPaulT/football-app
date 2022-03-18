import 'package:flutter_test/flutter_test.dart';
import 'package:football_app/data/adaptor/network/json/coach.dart';

void main() {
  test('Coach fromJson ', () {
    final coach = Coach.fromJson(_jsonMap);
    expect(coach.id, _id);
    expect(coach.name, _name);
    expect(coach.countryOfBirth, _countryOfBirth);
    expect(coach.nationality, _nationality);
  });

  test('Coach toJson ', () {
    final coach = Coach(
      id: _id,
      name: _name,
      countryOfBirth: _countryOfBirth,
      nationality: _nationality,
    );
    final jsonMap = coach.toJson();
    expect(jsonMap, _jsonMap);
  });
}

const _id = 11142;
const _name = 'Enderson Moreira';
const _countryOfBirth = 'Brazil';
const _nationality = 'Brazil';
const _jsonMap = {
  'id': _id,
  'name': _name,
  'countryOfBirth': _countryOfBirth,
  'nationality': _nationality,
};
