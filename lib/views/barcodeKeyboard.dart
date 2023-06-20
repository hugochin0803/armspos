import 'package:flutter/material.dart';
import 'package:virtual_keyboard_multi_language/virtual_keyboard_multi_language.dart';


class barcodeKeyboard extends StatefulWidget {
  const barcodeKeyboard({Key? key}) : super(key: key);

  @override
  State<barcodeKeyboard> createState() => _barcodeKeyboardState();
}

class _barcodeKeyboardState extends State<barcodeKeyboard> {
  TextEditingController cotext = TextEditingController();
  String text="";
  bool shiftEnabled = false;
  @override
  Widget build(BuildContext context) {
   
      return Container(
        margin: EdgeInsets.only(left: 50,right: 50),
        child: Column(
          children: [
            TextField(
              controller: cotext,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Barcode',
              ),
            ),
            Container(
                          color: Color.fromARGB(0, 210, 209, 209),
                          child: VirtualKeyboard(
                          height: 400,
                          width: 500,
                          textColor: Colors.black,
                          fontSize: 20,
                          type: VirtualKeyboardType.Numeric,
                          onKeyPress: _onKeyPress),
            ),
          ],
        ),
      );    
  }

  _onKeyPress(VirtualKeyboardKey key) {
    
    if (key.keyType == VirtualKeyboardKeyType.String) {
        text = text + (shiftEnabled ? key.capsText.toString() : key.text.toString());
    } else if (key.keyType == VirtualKeyboardKeyType.Action) {
    switch (key.action) {
        case VirtualKeyboardKeyAction.Backspace:
            if (text.isEmpty) return;
            text = text.substring(0, text.length - 1);
            break;
        case VirtualKeyboardKeyAction.Return:
            print(cotext.text);
            break;
        case VirtualKeyboardKeyAction.Space:
            text = text + key.text.toString();
            break;
        case VirtualKeyboardKeyAction.Shift:
            shiftEnabled = !shiftEnabled;
            break;
        case VirtualKeyboardKeyAction.Clear:
            text="";
            break;
        case VirtualKeyboardKeyAction.Escape:
            Navigator.pop(context);
            break;
     default:
     }
     }
    // // Update the screen
    cotext.text = text;
    setState(() {  
    });
}

}