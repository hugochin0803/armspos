import 'package:flutter/material.dart';
import 'dart:io';
import 'package:window_manager/window_manager.dart';
import 'barcodeKeyboard.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  WindowOptions windowOptions = new WindowOptions();
  Widget build(BuildContext context) {
   return Scaffold(
  body: Column(
    children: [
      Expanded(
        child:
          Row(children: [
            Flexible(
              flex:3,
              child: Container(
                decoration: BoxDecoration(border: Border.all(width: 1),color: Colors.blue[100]),
                child: Column(children: [
                  _totalAmount(),
                  Expanded(
                    flex: 13,
                    child:Container(
                      decoration: BoxDecoration(border: Border.all(width: 1),color: Colors.white),
                      child: _receiptOutcome()),),
                  _subtotalSummary(),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 10,right: 10,left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Flexible(
                          child: 
                          Container(
                            height: double.infinity,
                            child: RawMaterialButton(
                                  onPressed: () {},
                                  elevation: 2.0,
                                  fillColor: Color.fromARGB(255, 240, 101, 101),
                                  child: Text("Abort",style: TextStyle(fontSize: MediaQuery.sizeOf(context).width*0.01)),
                                  padding: EdgeInsets.all(10),
                                  shape: CircleBorder(),
                                                  ),
                          )),
                        Flexible(
                          child: Container(
                            height: double.infinity,
                            child: RawMaterialButton(
                                onPressed: () {},
                                elevation: 2.0,
                                fillColor: Color.fromARGB(255, 241, 239, 93),
                                child: Text("Hold Bill",style: TextStyle(fontSize: MediaQuery.sizeOf(context).width*0.01)),
                                padding: EdgeInsets.all(10),
                                shape: CircleBorder(),
                              ),
                          )
                            ),
                        Flexible(
                          child: Container(
                            height: double.infinity,
                            child: RawMaterialButton(
                                onPressed: () {},
                                elevation: 2.0,
                                fillColor: Color.fromARGB(255, 144, 248, 118),
                                child: Text("Payment",style: TextStyle(fontSize: MediaQuery.sizeOf(context).width*0.01),),
                                padding: EdgeInsets.all(10),
                                shape: CircleBorder(),
                              ),
                          ))    
                      ],)
                    ),
                  )
                ]),
              )
            ),
            Expanded(
              flex: 8,
              child: Container(
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Column(children: [
                  Flexible(flex:2,child: Container(decoration: BoxDecoration(color: Colors.blue),)),
                  Expanded(flex:18,child: Container()),
                  Flexible(flex:2,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.blue),
                      child: Row(children: [
                        Flexible(child: Container()),
                        Flexible(child: Container(
                          child: IconButton(onPressed:() => {
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 500,
                                color: Color.fromARGB(210, 100, 195, 239),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      barcodeKeyboard(),
                                    ],
                                  ),
                                ),
                              );
                            },
                          )
                        },icon: Icon(Icons.keyboard),),)),
                        Expanded(child: Container())
                      ],),
                    ))
                ],),
              ),
            ),
            
          ],)
      )
    ],
  ),
);
}

Widget _subtotalSummary(){
  return Flexible(
      flex:2,
      child: Row(children: [
          Flexible(
            child: 
              Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(color: Colors.blue),
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [ 
                              Text("Total Quantity",style: TextStyle(color:Colors.white, fontSize: MediaQuery.sizeOf(context).width*0.01)),
                              Text("4",style: TextStyle(color:Colors.white, fontSize:MediaQuery.sizeOf(context).width*0.01))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Rounding",style: TextStyle(color:Colors.white, fontSize: MediaQuery.sizeOf(context).width*0.01)),
                              Text("+0.04",style: TextStyle(color:Colors.white, fontSize:MediaQuery.sizeOf(context).width*0.01))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Sub Total",style: TextStyle(color:Colors.white, fontSize: MediaQuery.sizeOf(context).width*0.01)),
                              Text("0.00",style: TextStyle(color:Colors.white, fontSize: MediaQuery.sizeOf(context).width*0.01))
                            ],
                          ),
                        ]
                      ),
                    ),
          ),
          Flexible(
            child:
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                decoration: BoxDecoration(color: Colors.blue),
                child: 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ 
                    Text("Total Quantity",style: TextStyle(color:Colors.white, fontSize: MediaQuery.sizeOf(context).width*0.01)),
                    Text("4",style: TextStyle(color:Colors.white, fontSize: MediaQuery.sizeOf(context).width*0.01))],
                    ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Rounding",style: TextStyle(color:Colors.white, fontSize: MediaQuery.sizeOf(context).width*0.01)),
                    Text("+0.04",style: TextStyle(color:Colors.white, fontSize: MediaQuery.sizeOf(context).width*0.01))
                    ],
                    ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Sub Total",style: TextStyle(color:Colors.white, fontSize: MediaQuery.sizeOf(context).width*0.01)),
                    Text("0.00",style: TextStyle(color:Colors.white, fontSize: MediaQuery.sizeOf(context).width*0.01))
                    ],
                     ),
                    ]
                    ),
                    )
                    ),
                    ],));
}

Widget _totalAmount(){
  return Flexible(
            flex:2,
            child: 
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                decoration: BoxDecoration(color: Colors.blue),
                child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Total",style: TextStyle(color:Colors.white,fontSize: MediaQuery.sizeOf(context).height*0.02),),
                                Text("RM",style: TextStyle(color: Colors.white,fontSize: MediaQuery.sizeOf(context).height*0.02),)
                              ],
                          )
                      ),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  child: 
                                    Text("34.50",style:  TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: MediaQuery.sizeOf(context).height*0.05),),
                                )
                              ]
                            ),
                        )
                    );
}

Widget _receiptOutcome(){
    return FutureBuilder(
    future: _read(),
    builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
      if (snapshot.hasData) {
        return 
        SingleChildScrollView(
        reverse: true,
        child:
        RichText(
          text: TextSpan(
            text: snapshot.data,
            style: TextStyle(fontFamily: "Consolas",color: Colors.black,fontSize: MediaQuery.sizeOf(context).width*0.0096),
          ),
        ));
      } else if (snapshot.hasError) {
            return RichText(
                        text: const TextSpan(
                          text: "No Transaction",
                          style: TextStyle(color: Colors.black,fontSize: 18),
                        ),
                        textAlign:TextAlign.center,
                        softWrap: true,
                        overflow: TextOverflow.fade,
                        textScaleFactor: 1,
              );
      }
      return const CircularProgressIndicator();
    },
  );
  }

  Future<String> _read() async {
    String text="";
    try {
      final File file = File('assets/data/receipt.txt');
      text = await file.readAsString();
    } catch (e) { 
      print("Couldn't read file");
      return Future.error(e);
    }
    return text;
  }

}