import 'package:hive/hive.dart';

part 'listsettings.g.dart';

// ignore: empty_constructor_bodies
@HiveType(typeId: 20)
class Settings {
  @HiveField(0)
  final String? name;

  @HiveField(1)
  final String? firstname;

  @HiveField(2)
  final String? job;

  @HiveField(3)
  final String? phonenumber;

  @HiveField(4)
  final String? email;

  @HiveField(5)
  final List<ListInstitution>? Institution;

  Settings(
      {this.name,
      this.firstname,
      this.job,
      this.phonenumber,
      this.email,
      this.Institution});
}

@HiveType(typeId: 30)
class ListInstitution {
  @HiveField(0)
  final String? institution;

  ListInstitution({this.institution});
}

final List<Settings> settingsex = [
  Settings(
    name: 'test',
    firstname: 'Firstname',
  )
];
