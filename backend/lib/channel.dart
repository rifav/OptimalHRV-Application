import 'package:optimal_api/optimal_api.dart';

import 'controller/LoginController.dart';

class OptimalApiChannel extends ApplicationChannel {
  late ManagedContext context;
  @override
  Future prepare() async {
    logger.onRecord.listen(
        (rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
    //final config = DbConfig(options!.configurationFilePath);
    final dataModel = ManagedDataModel.fromCurrentMirrorSystem();
    //final psc = PostgreSQLPersistentStore.fromConnectionInfo(
    //config.database.username,
    //config.database.password,
    //config.database.host,
    //config.database.port,
    //config.database.databaseName);
    final psc = PostgreSQLPersistentStore.fromConnectionInfo(
        "optimal_user", "password", "localhost", 5432, "optimal");
    context = ManagedContext(dataModel, psc);
  }

  @override
  Controller get entryPoint {
    final router = Router();

    router.route('/login').link(() => LoginController(context));

    router.route("/example").linkFunction((request) async {
      return Response.ok({"key": "value"});
    });

    return router;
  }
}

//class DbConfig extends Configuration {
  //DbConfig(String path) : super.fromFile(File(path));

  //DatabaseConfiguration database;
//}
