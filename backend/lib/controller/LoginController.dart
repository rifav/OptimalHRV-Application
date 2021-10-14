// ignore_for_file: unnecessary_null_comparison
import 'package:optimal_api/model/users.dart';

import '../optimal_api.dart';

class LoginController extends ResourceController {
  LoginController(this.context);
  final ManagedContext context;

  @Operation.post()
  FutureOr<Response> login(@Bind.body() Users user) async {
    if (user.email == null || user.password == null) {
      return Response.badRequest(
          body: {'error': 'email and password are required'});
    }
    final query = Query<Users>(context)
      ..where((u) => u.email).equalTo(user.email);
    final Users? fetchedUser = await query.fetchOne();
    print(fetchedUser);

    if (fetchedUser == null) {
      return Response.badRequest(body: {'error': 'users not found'});
    } else {
      // ignore: unrelated_type_equality_checks
      if (fetchedUser.password == user.password) {
        print(fetchedUser.toString());
        return Response.ok({"success": true, "message": 'Successfull login'});
      } else {
        return Response.badRequest(body: {'error': 'wrong password'});
      }
    }
  }
}
