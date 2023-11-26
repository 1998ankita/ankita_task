import 'package:ankita_task/import.dart';

class LoginProvider extends ChangeNotifier{
  TextEditingController mobile = TextEditingController();

  void onJoin(context) {
    Navigator.of(context).pushReplacement(createPageRoute(Register()));
  }

}