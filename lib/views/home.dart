import 'package:flutter/material.dart';
import 'dart:io';
import 'barcodeKeyboard.dart';
import 'package:armspos/views/categories/retail_categories.dart';
import 'package:armspos/views/categories/fnb_categories.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedCategory = "";
  @override
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
                  Flexible(
                    flex: 2,
                    child: 
                      Container(
                         margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                         alignment: Alignment.center,
                         width: double.infinity,
                         height: double.infinity,
                         decoration: BoxDecoration(color: Colors.blue),
                         child: Text("Pumpkin Custard | Price: 2.90",style: TextStyle(color: Colors.white,fontSize: MediaQuery.sizeOf(context).height*0.018,fontWeight: FontWeight.bold),),
                      ),
                  ),
                  Expanded(
                    flex: 19,
                    child:Container(
                      decoration: BoxDecoration(border: Border.all(width: 1),color: Colors.white),
                      child: _receiptOutcome()),),
                  _subtotalSummary(),
                  Expanded(
                    flex: 3,
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
                  Flexible(
                    flex:2,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(color: Colors.blue),
                      child: Row(children: [
                        Expanded(
                          flex:3,
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Image.asset("assets/arms-logo-remove.png"),),),
                        Expanded(
                          flex:5,
                          child: Container(),),
                        Expanded(
                          flex:5,
                          child: Container(
                            child: Row(children: [
                              IconButton(
                              iconSize: 35,
                              icon: const Icon(
                                Icons.person,
                              ),
                              onPressed: () {
                              },
                              ),
                              Expanded(child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                margin: EdgeInsets.only(top: 10,bottom: 10,right: 50),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  Text("Name: Hugo Chin",style: TextStyle(fontSize: 20),),
                                  Text("ID: 10000003",style: TextStyle(fontSize: 15))
                                ]),
                              ))
                            ]),
                          ),),
                        Flexible(child: Container(
                          child:IconButton(
                              iconSize: 35,
                              icon: const Icon(
                                Icons.settings,
                              ),
                              onPressed: () {
                              },
                            ),
                        ),),
                      ]),
                    )
                  ),
                  Expanded(flex:18,child: Container(
                    child: Column(
                      children: [
                        Container(
                          height: 100.0,
                          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black))),
                          child: Row(
                            children: [
                              const SizedBox(width: 20),
                              SizedBox(
                                width: 120,
                                height: 70,
                                child: ElevatedButton(
                                onPressed: () { 
                                  setState(() {
                                    selectedCategory = "F&B";
                                  });
                                }, 
                                child: const Text('F&B'),
                                style: ElevatedButton.styleFrom(
                                side: BorderSide(width:3, color:Colors.brown), //border width and color
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder( //to set border radius to button
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                )),
                              ),
                              const SizedBox(width: 20),
                              SizedBox(
                                width: 120,
                                height: 70,
                                child: ElevatedButton(
                                onPressed: () { 
                                  setState(() {
                                    selectedCategory = "Retail";
                                  });
                                }, 
                                child: const Text('Retail'),
                                style: ElevatedButton.styleFrom(
                                side: BorderSide(width:3, color:Colors.brown), //border width and color
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder( //to set border radius to button
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                )),
                              ),
                              const SizedBox(width: 20),
                            ],
                          ),
                        ),
                        Expanded(
                          child: LayoutBuilder(builder: (context, constraints) { 
                            if(selectedCategory == "Retail"){
                                return  RCategories();
                            }else{
                                return FCategories();
                            }
                          })
                        ) ,
                      ],
                    ),
                  )),
                  Flexible(flex:2,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.blue),
                      child: Row(children: [
                        Flexible(child: Container()),
                        Flexible(child: Container()),
                        Flexible(child: Container(
                          width: double.infinity,
                          height: double.infinity,
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
                        },icon: Icon(Icons.keyboard,size: 50,),),))
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
      flex:3,
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
            flex:3,
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
        scrollDirection: Axis.vertical,
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