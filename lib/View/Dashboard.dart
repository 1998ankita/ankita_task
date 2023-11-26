
import 'package:ankita_task/import.dart';
class Dashboard extends StatelessWidget {
   Dashboard({super.key});
 TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                sizeBox_mq(context, width: 1, height:0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                 Container(
                   width: MediaQuery.of(context).size.width-80,
                   child: CustomTextFieldwithoutshadow(controller: search,
                     hintText: "Jobs by Profile, Title, Projects etc",
                     labelText: "",
                     bgColor: Colors.white,
                     inputbordercolor: Colors.black,),
                 ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none))
                ],
                ),
                sizeBox_mq(context, width: 1, height:0.10),
                Row(
                  children: [
                    SubHeadingText(text: "Aspirants with higher percentage are more likely to be \n shortlisted. "),
                    SubHeadingText(text: "Update the mandatory fields.", color: Colors.black, underlined: true,),
                  ],
                ),
                Row(
                  children: [

                  ],
                )



              ],
            ),
          ),
        ),
      ),
    );
  }
}
