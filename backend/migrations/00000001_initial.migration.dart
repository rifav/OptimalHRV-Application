import 'dart:async';
import 'package:conduit/conduit.dart';   

class Migration1 extends Migration { 
  @override
  Future upgrade() async {
   		database.createTable(SchemaTable("users", [SchemaColumn("id", ManagedPropertyType.integer, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("email", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: false, isUnique: true),SchemaColumn("password", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("full_name", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("created_at", ManagedPropertyType.datetime, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false)]));
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {}
}
    