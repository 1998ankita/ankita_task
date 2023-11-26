
import '../../import.dart';

Widget sizeBox_mq(
    BuildContext context, {
      required double width,
      required double height,
      Widget? child,
    }) {
  final mq = MediaQuery.of(context).size;
  return SizedBox(
    height: mq.height * height,
    width: mq.width * width,
    child: child,
  );
}