import 'package:flutter/material.dart';
import 'package:healthyshield/Screens/bottomSheet.dart';
import 'package:healthyshield/Services/barcodeScanner.dart';
import 'package:healthyshield/Utilities/constants.dart';
import 'package:healthyshield/Utilities/desginedButton.dart';

// Here is the forget password screen
class ForgetPass extends StatelessWidget {
  static String id = "forget";
  static BarcodeScanner scanner = BarcodeScanner();

  Widget buildBottomSheet(BuildContext context) {
    String pass;
    return BottomSheetEditor(
      field: 'Password',
      onChangeFunction: (value) {
        pass = value;
      },
      buttonFunction: () {
        //TODO enter new password in db
        print(pass);
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot password"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: mediaQuery.size.height,
          width: mediaQuery.size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Assets/Assetbackground.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: kPaddingValue,
                  child: Image.asset(
                    'Assets/Asset2.png',
                    scale: 10,
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: Text(
                    'Please,Scan your Barcode',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: RoundIconButton(
                    text: "Scan Barcode",
                    func: () {
                      scanner.scanBarcodeNormal();
                      showModalBottomSheet(
                        context: context,
                        builder: buildBottomSheet,
                        isDismissible: true,
                      );
                    },
                    height: 45.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
