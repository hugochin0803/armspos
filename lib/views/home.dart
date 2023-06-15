import 'package:flutter/material.dart';
import 'dart:io';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
  body: Column(
    children: [
      Flexible(
        flex: 9,
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Row(
            children: [
            Flexible(
              flex:4,
              child:
                Column(
                  children: [
                    Flexible(
                      flex:2,
                      child: 
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 10, 10),
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
                                        Text("Total",style: TextStyle(color:Colors.white,fontSize: MediaQuery.of(context).textScaleFactor*25),),
                                        Text("RM",style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).textScaleFactor*25),)
                                      ],
                                    )
                                ),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  child: 
                                    Text("34.50",style:  TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).textScaleFactor*50),),
                                )
                              ]
                            ),
                        )
                    ),
                    Flexible(
                      flex:2,
                      child: Row(children: [
                        Flexible(
                          child: 
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 5, 10),
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              decoration: BoxDecoration(color: Colors.blue),
                              child: Column(
                                mainAxisAlignment:MainAxisAlignment.center,
                                children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [ 
                                    Text("Total Quantity",style: TextStyle(color:Colors.white, fontSize: MediaQuery.of(context).textScaleFactor*20)),
                                    Text("4",style: TextStyle(color:Colors.white, fontSize: MediaQuery.of(context).textScaleFactor*20))],
                                  ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Rounding",style: TextStyle(color:Colors.white, fontSize: MediaQuery.of(context).textScaleFactor*20)),
                                    Text("+0.04",style: TextStyle(color:Colors.white, fontSize: MediaQuery.of(context).textScaleFactor*20))
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Sub Total",style: TextStyle(color:Colors.white, fontSize: MediaQuery.of(context).textScaleFactor*20)),
                                    Text("0.00",style: TextStyle(color:Colors.white, fontSize: MediaQuery.of(context).textScaleFactor*20))
                                  ],
                                ),
                              ]),
                            ),
                        ),
                        Flexible(
                          child:
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 0, 10, 10),
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              decoration: BoxDecoration(color: Colors.blue),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [ 
                                      Text("Total Quantity",style: TextStyle(color:Colors.white, fontSize: MediaQuery.of(context).textScaleFactor*20)),
                                      Text("4",style: TextStyle(color:Colors.white, fontSize: MediaQuery.of(context).textScaleFactor*20))],
                                    ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Rounding",style: TextStyle(color:Colors.white, fontSize: MediaQuery.of(context).textScaleFactor*20)),
                                      Text("+0.04",style: TextStyle(color:Colors.white, fontSize: MediaQuery.of(context).textScaleFactor*20))
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Sub Total",style: TextStyle(color:Colors.white, fontSize: MediaQuery.of(context).textScaleFactor*20)),
                                      Text("0.00",style: TextStyle(color:Colors.white, fontSize: MediaQuery.of(context).textScaleFactor*20))
                                    ],
                                  ),
                                ]
                              ),
                            )
                        ),
                      ],)),
                    Expanded(
                      flex:8,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        width: double.maxFinite,
                        decoration: BoxDecoration(border: Border.all(width:1)),
                        child: 
                          _receiptOutcome(),
                      )
                    ),
                    Flexible(
                      flex:1,
                      child: Container(
                        margin: EdgeInsets.only(top: 10,right: 10),
                        decoration: BoxDecoration(border: Border.all(width:1)),
                        child: const TextField(),
                      ))
                  ],
                )
            ),
            Expanded(
              flex: 7,
              child: Container(
                child: 
                Column(
                  children: [
                    Flexible(
                      flex: 2,
                      child: 
                        Container(
                          decoration: BoxDecoration(color:Colors.blue),
                        )
                    ),
                    Expanded(
                      flex: 14,
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex:7,
                              child: 
                                Container(
                                  decoration:BoxDecoration(border: Border.all(width: 1)),
                                  //button here
                                )
                            ),
                            Flexible(
                              flex:1,
                              child:
                                Container(
                                  decoration: BoxDecoration(border: Border.all(width: 1),color: Colors.blue),
                                )
                            )
                          ]
                        ),
                      ),
                    )
                  ]
                ),
              ),
            )
          ],)
      ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          child:
            Row(
              children: [
              Expanded(
                child: 
                  Container(
                    margin:const EdgeInsets.all(0),
                    decoration: const BoxDecoration(color: Colors.blue),
                  ),
              )
              ],
            )
        )
      )
    ],
  ),
);
}

  Widget _keypad(text){
    return Container(
      margin: const EdgeInsets.all(5),
      width: 100,
      height: 85,
      decoration: const BoxDecoration(color: Colors.grey,),
      child: Text(text,textAlign: TextAlign.center,style: const TextStyle(color: Colors.black),),
    );
  }


  Widget _topMenu({required String title, required String subTitle, required Widget action}) {
    return Container(
      color: Colors.blue,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(Icons.menu, color: Colors.white),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subTitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          // action,
        ],
      ),
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
            style: TextStyle(fontFamily: "Consolas",color: Colors.black,fontSize: MediaQuery.of(context).textScaleFactor*19),
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

  Widget _receiptSummary(){
    return 
    Column(children: [
      Flexible(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          decoration: const BoxDecoration(color: Colors.blue), 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child:
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total",style: TextStyle(color:Colors.white,),),
                      Text("RM",style: TextStyle(color: Colors.white),)
                    ],
                  )
              ),
              Container(
                alignment: Alignment.centerRight,
                child: 
                  const Text("34.50",style:  TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              )
            ],
          ),
        ),
      ),
      Flexible(
        child: 
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child:
                  Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  padding: const EdgeInsets.all(10), 
                  color: Colors.blue, 
                  child:
                  const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("Total Quantity",style: TextStyle(color:Colors.white, fontSize: 10)),
                        Text("4",style: TextStyle(color:Colors.white, fontSize: 10))
                      ],),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("Rounding",style: TextStyle(color:Colors.white, fontSize: 10)),
                        Text("+0.04",style: TextStyle(color:Colors.white, fontSize: 10))
                      ],),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("Sub Total",style: TextStyle(color:Colors.white, fontSize: 10)),
                        Text("0.00",style: TextStyle(color:Colors.white, fontSize: 10))
                      ],)
                    ],
                  ),
                  ),
                ),
                Flexible(
                  child:
                  Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  padding: const EdgeInsets.all(10), 
                  color: Colors.blue, 
                  child:
                  const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("Total Quantity",style: TextStyle(color:Colors.white, fontSize: 10)),
                        Text("4",style: TextStyle(color:Colors.white, fontSize: 10))
                      ],),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("Rounding",style: TextStyle(color:Colors.white, fontSize: 10)),
                        Text("+0.04",style: TextStyle(color:Colors.white, fontSize: 10))
                      ],),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("Sub Total",style: TextStyle(color:Colors.white, fontSize: 10)),
                        Text("0.00",style: TextStyle(color:Colors.white, fontSize: 10))
                      ],)
                    ],
                  ),
                  ),
                ),
              ]
            ),
          )
      )
    ]);
  }

  Widget _search() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Row(
        children: [
          Icon(Icons.search),
          SizedBox(width: 8),
          Text('Search...'),
        ],
      ),
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

  // Widget _itemTab({required String icon, required String title, required bool isActive}) {
  //   final backgroundColor = isActive ? Colors.blue : Colors.transparent;
  //   final textColor = isActive ? Colors.black : Colors.grey;

  //   return Container(
  //     padding: const EdgeInsets.symmetric(horizontal: 16),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Container(
  //           padding: const EdgeInsets.all(8),
  //           decoration: BoxDecoration(
  //             color: backgroundColor,
  //             borderRadius: BorderRadius.circular(12),
  //           ),
  //           child: Image.asset(
  //             icon,
  //             width: 24,
  //             height: 24,
  //             color: textColor,
  //           ),
  //         ),
  //         const SizedBox(height: 8),
  //         Text(
  //           title,
  //           style: TextStyle(
  //             color: textColor,
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Widget _item({required String image, required String title, required String price, required String item}) {
  //   return Container(
  //     padding: const EdgeInsets.all(6),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Container(
  //           width: double.infinity,
  //           height: 120,
  //           decoration: BoxDecoration(
  //             image: DecorationImage(
  //               image: AssetImage(image),
  //               fit: BoxFit.cover,
  //             ),
  //             borderRadius: BorderRadius.circular(8),
  //           ),
  //         ),
  //         const SizedBox(height: 6),
  //         Text(
  //           title,
  //           style: const TextStyle(
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //         const SizedBox(height: 4),
  //         Text(price),
  //         const SizedBox(height: 4),
  //         Text(
  //           item,
  //           style: TextStyle(
  //             color: Colors.grey,
  //             fontSize: 10,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Widget _cart() {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Row(
  //           children: const [
  //             Icon(Icons.shopping_cart),
  //             SizedBox(width: 8),
  //             Text('Cart'),
  //           ],
  //         ),
  //         TextButton(
  //           onPressed: () {},
  //           child: const Text('Clear All'),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Widget _orderSummary() {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Text(
  //           'Order Summary',
  //           style: const TextStyle(
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //         const SizedBox(height: 8),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             const Text('Subtotal:'),
  //             Text('\$38.96'),
  //           ],
  //         ),
  //         const SizedBox(height: 4),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             const Text('Tax:'),
  //             Text('\$3.12'),
  //           ],
  //         ),
  //         const SizedBox(height: 4),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             const Text('Total:'),
  //             Text('\$42.08'),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Widget _paymentMethod() {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Text(
  //           'Payment Method',
  //           style: const TextStyle(
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //         const SizedBox(height: 8),
  //         ListTile(
  //           leading: Image.asset('assets/icons/icon-cash.png', width: 24, height: 24),
  //           title: const Text('Cash'),
  //           trailing: Radio(
  //             value: 1,
  //             groupValue: 1,
  //             onChanged: (value) {},
  //           ),
  //         ),
  //         ListTile(
  //           leading: Image.asset('assets/icons/icon-card.png', width: 24, height: 24),
  //           title: const Text('Card'),
  //           trailing: Radio(
  //             value: 2,
  //             groupValue: 1,
  //             onChanged: (value) {},
  //           ),
  //         ),
  //         ListTile(
  //           leading: Image.asset('assets/icons/icon-paypal.png', width: 24, height: 24),
  //           title: const Text('PayPal'),
  //           trailing: Radio(
  //             value: 3,
  //             groupValue: 1,
  //             onChanged: (value) {},
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}