import 'package:ankita_task/import.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final bool loading;
  final VoidCallback onTap;
  final double? borderRadius;
  const RoundedButton(
      {Key? key, required this.text, this.loading = false, required this.onTap, this.borderRadius=20})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
        child: Center(
          child: loading
              ? const CircularProgressIndicator(
            color: Colors.white,
          )
              : Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
