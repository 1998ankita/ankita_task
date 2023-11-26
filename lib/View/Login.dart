import '../import.dart';
class Login extends StatelessWidget {
   Login({super.key});
  TextEditingController mobile = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              sizeBox_mq(context, width: 1, height: 0.08),
              MainHeadingText(text: "Come for Opportunities,\nStay for Community",
                color: Colors.black,
              textAlign: TextAlign.center,),
              sizeBox_mq(context, width: 1, height: 0.25),
              CustomTextFieldwithoutshadow(
                  controller: mobile,
                  hintText: "Enter Whatsapp Mobile Number",
                  labelText: " ",
                  bgColor: Colors.transparent,
                  inputbordercolor: AppColors.greyColor,
                  keyBoardType: TextInputType.number,
                 ),
              sizeBox_mq(context, width: 1, height: 0.02),
              Consumer<LoginProvider>(
                builder: (context,controller,child) {
                  return RoundedButton(text: "Join for Free", onTap: (){
                    controller.onJoin(context);
                  });
                }
              ),
              sizeBox_mq(context, width: 1, height: 0.02),
              RichText(
            text: TextSpan(
              text: 'Join ',
              style:TextStyle(color: Color(0xff6E6D7A)),
              children: <TextSpan>[
                TextSpan(
                  text: ' 18506 ',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
                TextSpan(
                  text: 'Creators today.',
                  style: TextStyle( color: Color(0xff6E6D7A)),
                ),
              ],
            ),
          ),
              sizeBox_mq(context, width: 1, height: 0.25),
              RichText(
                textAlign: TextAlign.center,
            text: TextSpan(
              text: 'I agree to ',
              style:TextStyle(color: Color(0xff6E6D7A)),
              children: <TextSpan>[
                TextSpan(
                  text: 'Diffr Terms of Service ',
                  style: TextStyle(color: Colors.black,decoration: TextDecoration.underline),
                ),
                TextSpan(
                  text: ' and ',
                  style: TextStyle( color: Color(0xff6E6D7A)),
                ),
                TextSpan(
                  text: 'Privacy Policy \n',
                  style: TextStyle( color: Colors.black,decoration: TextDecoration.underline),
                ),
                TextSpan(
                  text: 'to receive emails and WhatsApp updates.',
                  style: TextStyle( color: Color(0xff6E6D7A)),
                ),
              ],
            ),
          ),
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}
