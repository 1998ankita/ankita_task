import 'package:ankita_task/Utils/Widgets/AppDrowpdown.dart';
import 'package:ankita_task/import.dart';
class Register extends StatelessWidget {
   Register({super.key});
 TextEditingController fname=TextEditingController();
 TextEditingController lname=TextEditingController();
 TextEditingController email=TextEditingController();
 final List<Map<String, dynamic>> dropdownOptions = [
     {'id': '1', 'name': 'Option 1'},
     {'id': '2', 'name': 'Option 2'},
     {'id': '3', 'name': 'Option 3'},
   ];

   String selectedOptionId = '1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              sizeBox_mq(context, width: 1, height: 0.02),
              MainHeadingText(text: "Great !"),
              sizeBox_mq(context, width: 1, height: 0.02),
              SubHeadingText(text: "Help us with basic details for personalized recommendations",color: Colors.black,textAlign: TextAlign.center,),
              sizeBox_mq(context, width: 1, height: 0.05),
              CustomTextFieldwithoutshadow(controller: fname, hintText: "", labelText: "First name*"),
              sizeBox_mq(context, width: 1, height: 0.03),
              CustomTextFieldwithoutshadow(controller: lname, hintText: "", labelText: "Last name*"),
              sizeBox_mq(context, width: 1, height: 0.03),
              CustomDropdown(
                options: dropdownOptions,
                selectedOptionId: selectedOptionId,
                onChanged: (String newValue) {
                },
              ),
              sizeBox_mq(context, width: 1, height: 0.03),
              CustomDropdown(
                options: dropdownOptions,
                selectedOptionId: selectedOptionId,
                onChanged: (String newValue) {
                },
              ),
              sizeBox_mq(context, width: 1, height: 0.03),
              CustomTextFieldwithoutshadow(controller: email, hintText: "", labelText: "Email"),
              sizeBox_mq(context, width: 1, height: 0.03),
              RoundedButton(text: "Join the Community", onTap: (){
                Navigator.of(context).pushReplacement(createPageRoute(Dashboard()));

              })


            ],
          ),
        ),
      ),
    );
  }
}
