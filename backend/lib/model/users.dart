import 'package:optimal_api/optimal_api.dart';

class Users extends ManagedObject<_Users> implements _Users {}

@Table(name: 'users')
class _Users {
  @Column(primaryKey: true, autoincrement: true)
  late int id;

  @Column(unique: true, indexed: true)
  late String email;

  @Column()
  late String password;

  @Column()
  // ignore: non_constant_identifier_names
  late String full_name;

  @Column()
  // ignore: non_constant_identifier_names
  late DateTime created_at;
}
