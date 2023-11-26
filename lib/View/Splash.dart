

import '../import.dart';
class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {

    print("object  1");
    Future.delayed(Duration(seconds: 3), () {
      print("object");
      Navigator.of(context).pushReplacement(createPageRoute(Login()));
    });
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Card(child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset(AppImages.logo,height: MediaQuery.of(context).size.height*0.10,),
          ))),
        ],
      ),
    );
  }
}
