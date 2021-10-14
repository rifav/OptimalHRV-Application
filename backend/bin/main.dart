import 'package:optimal_api/optimal_api.dart';

Future main() async {
  final app = Application<OptimalApiChannel>()
    ..options.configurationFilePath = "config.yaml"
    ..options.port = 8888;

  // ignore: unused_local_variable
  final count = Platform.numberOfProcessors ~/ 2;
  await app.startOnCurrentIsolate();

  print("Application started on port: ${app.options.port}.");
  print("Use Ctrl-C (SIGINT) to stop running the application.");
}
