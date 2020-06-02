import 'package:flutter/material.dart';
import 'package:healthyshield/Utilities/constants.dart';

class DropDownMenuCustom extends StatelessWidget {
  DropDownMenuCustom(
      {this.f, this.itemsStrings, this.hint, this.value, this.title});

  final Function f;
  final String hint, value, title;
  final List<String> itemsStrings;

  List<DropdownMenuItem> loaditems(context) {
    List<DropdownMenuItem<String>> list = [];

    for (var item in itemsStrings) {
      list.add(
        DropdownMenuItem(
          child: Text(
            item,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle2.merge(
                  TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
          ),
          value: item,
        ),
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: kPaddingValue,
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.075,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, spreadRadius: 5, blurRadius: 10),
                BoxShadow(
                    color: Colors.black12, spreadRadius: 5, blurRadius: 10),
                BoxShadow(
                    color: Colors.black12, spreadRadius: 5, blurRadius: 10)
              ],
              borderRadius: BorderRadius.circular(30),
              color: Theme.of(context).primaryColor,
            ),
            child: Padding(
              padding: kPaddingValueLists,
              child: DropdownButton(
                isExpanded: true,
                items: loaditems(context),
                onChanged: f,
                hint: Text(hint,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        .merge(TextStyle(color: Colors.white, fontSize: 16))),
                value: value,
                dropdownColor: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
