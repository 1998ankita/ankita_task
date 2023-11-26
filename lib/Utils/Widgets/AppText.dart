import 'package:ankita_task/import.dart';
class MainHeadingText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final double? height;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextAlign? textAlign;
  final bool? isUnderLine;
  const MainHeadingText({
    Key? key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.fontFamily = '',
    this.textAlign,
    this.height,
    this.isUnderLine=false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color??Colors.black,
        fontWeight:fontWeight??FontWeight.w800,
        fontSize: fontSize??24,
        // fontFamily:
        fontFamily: "",
        height: height,
        // if(isUnderLine)
        //   decoration:isUnderLine!?TextDecoration.underline:TextDecoration.none

      ),
    );
  }
}

class headingText extends StatelessWidget {
  final String text;
  final double? letterspaceing;
  final double? height;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextAlign? textAlign;
  final bool underlined;
  const headingText({
    Key? key,
    required this.text,
    this.color = Colors.black,
    this.fontSize = 16,
    this.letterspaceing,
    this.height,
    this.fontWeight,
    this.fontFamily = '',
    this.textAlign,
    this.underlined = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign??TextAlign.start,
      style: TextStyle(
        // height: 1.5,
          color: color??Colors.black,
          fontWeight:fontWeight??FontWeight.w400,
          fontSize: fontSize??14,
          height: height,
          // fontFamily:
          fontFamily: fontFamily,
          decoration:underlined? TextDecoration.underline:null,
          letterSpacing: letterspaceing?? 0
      ),
    );
  }
}

class SubHeadingText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextAlign textAlign;
  final bool underlined;
  const SubHeadingText({
    Key? key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.fontFamily = 'medium',
    this.textAlign=TextAlign.start,
    this.underlined = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: 3,
      style: TextStyle(

        color: color??AppColors.greyColor,
        fontWeight:fontWeight??FontWeight.w500,
        fontSize: fontSize??16,
        // fontFamily:
        fontFamily: "",
        decoration:underlined? TextDecoration.underline:null,
      ),
    );
  }
}

class ParagraphText extends StatelessWidget {
  final String text;
  final double? letterspaceing;
  final double? height;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextAlign? textAlign;
  final bool underlined;
  const ParagraphText({
    Key? key,
    required this.text,
    this.color,
    this.fontSize,
    this.letterspaceing,
    this.height,
    this.fontWeight,
    this.fontFamily,
    this.textAlign,
    this.underlined = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign??TextAlign.start,
      style: TextStyle(
        // height: 1.5,
        color: color??AppColors.greyColor,
        fontWeight:fontWeight??FontWeight.w400,
        fontSize: fontSize??14,
        height: height,
        // fontFamily:
        fontFamily: "",
        decoration:underlined? TextDecoration.underline:null,
        letterSpacing: letterspaceing?? 0,
      ),
    );
  }
}

