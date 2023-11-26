import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final List<Map<String, dynamic>> options;
  final String selectedOptionId;
  final ValueChanged<String> onChanged;

  CustomDropdown({
    required this.options,
    required this.selectedOptionId,
    required this.onChanged,
  });

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    return Container(

      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "labelText",
            style: TextStyle(
                color: Color(0xff6E6D7A),
                fontWeight: FontWeight.w600,
                fontSize: 14),
          ),
          SizedBox(height: 4,),
          Container(
            width: MediaQuery.of(context).size.width,
            child: DropdownButton<String>(
              iconDisabledColor: Colors.transparent,
              iconEnabledColor: Colors.transparent,
              value: widget.selectedOptionId,
              onChanged: (String? newValue) {
                widget.onChanged(newValue ?? ''); // Return ID when an option is selected
              },
              items: widget.options.map<DropdownMenuItem<String>>((Map<String, dynamic> option) {
                return DropdownMenuItem<String>(
                  value: option['id'].toString(),
                  child: Text(option['name']),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
