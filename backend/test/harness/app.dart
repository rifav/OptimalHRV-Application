import 'package:conduit_test/conduit_test.dart';
import 'package:optimal_api/optimal_api.dart';

export 'package:conduit/conduit.dart';
export 'package:conduit_test/conduit_test.dart';
export 'package:optimal_api/optimal_api.dart';
export 'package:test/test.dart';

/// A testing harness for optimal_api.
///
/// A harness for testing an conduit application. Example test file:
///
///         void main() {
///           Harness harness = Harness()..install();
///
///           test("GET /path returns 200", () async {
///             final response = await harness.agent.get("/path");
///             expectResponse(response, 200);
///           });
///         }
///
class Harness extends TestHarness<OptimalApiChannel> {
  @override
  Future onSetUp() async {}

  @override
  Future onTearDown() async {}
}
