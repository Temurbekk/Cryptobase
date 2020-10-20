import 'package:flutter/material.dart';

class AddView extends StatefulWidget {
  AddView({Key key}) : super(key: key);

  @override
  _AddViewState createState() => _AddViewState();
}

class _AddViewState extends State<AddView> {
  List<String> coins = [
    'bitcoin',
    'tether',
    'etherium',
  ];

  String dropDownValue = 'bitcoin';
  TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          DropdownButton(
            value: dropDownValue,
            onChanged: (String value) {
              setState(
                () {
                  dropDownValue = value;
                },
              );
            },
            items: coins.map<DropdownMenuItem<String>>(
              (String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              },
            ).toList(),
          )
        ],
      ),
    );
  }
}
