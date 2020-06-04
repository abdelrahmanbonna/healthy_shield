import 'package:flutter/material.dart';
import 'package:healthyshield/Utilities/constants.dart';

class BottomSheetEditor extends StatelessWidget {
  BottomSheetEditor({this.field, this.buttonFunction, this.onChangeFunction});

  final String field;
  final Function buttonFunction, onChangeFunction;

  @override
  Widget build(BuildContext context) {
    const TextFieldStyle = InputDecoration(
      filled: true,
      fillColor: Colors.white,
      hintText: 'Enter new value:',
      hintStyle: TextStyle(color: kPrimaryColor, fontSize: 18.0),
      border: OutlineInputBorder(
        //borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
    );

    return Container(
      child: Container(
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Enter ' + field,
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: TextFieldStyle,
              onChanged: onChangeFunction,
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              onPressed: buttonFunction,
              color: Theme.of(context).primaryColor,
              child: Text(
                'Done',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .merge(TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
      color: Color(0xff757575),
    );
  }
}
