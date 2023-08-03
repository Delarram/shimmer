import 'package:flutter/material.dart';

import '../const/const.dart';

class DesignChange extends StatelessWidget {
  const DesignChange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Design",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                // horizontal: 10,
                vertical: 40,
              ),
              decoration: BoxDecoration(
             color: Colors.blue.withOpacity(0.1),
                borderRadius: const BorderRadius.only(bottomRight: Radius.circular(60))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 3,
                              offset: Offset(4, 3), // Shadow position
                            ),
                          ],
                        ),
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.flag_circle_rounded,
                                    color: Colors.teal,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "NetWorth",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text(
                                "\$ 3175",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 28),
                              ),
                            )
                          ],
                        ),
                      )),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      Expanded(
                          child: Container(
                        height: 130,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  blurRadius: 3,
                                  offset: Offset(4, 3), // Shadow position
                                ),
                              ],
                            ),
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "Carg ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      "(Will show after a month)",
                                      style: TextStyle(fontSize: 9),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text(
                              "Net Worth",
                              style: TextStyle(fontSize: 12),
                            ), Text(
                              "Investable",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],),
                        ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "+ XX %",
                                    style: TextStyle(fontSize: 12),
                                  ), Text(
                                    "+ XX %",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],),
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  blurRadius: 3,
                                  offset: Offset(4, 3), // Shadow position
                                ),
                              ],
                            ),
                        width: 200,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40, top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Investable Assets",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  "\$ 3175",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 28),
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      Expanded(
                          child: Container(
                        height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  blurRadius: 3,
                                  offset: Offset(4, 3), // Shadow position
                                ),
                              ],
                            ),
                        width: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Net Worth",
                                        style: TextStyle(fontSize: 12),
                                      ), Text(
                                        "Investable",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],),
                                ),
                                SizedBox(height: 5,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "+ XX %",
                                        style: TextStyle(fontSize: 12),
                                      ), Text(
                                        "+ XX %",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],),
                                ),
                              ],
                            ),
                      ))
                    ],
                  ),
                ],
              ),
            ),
            // Container(
            //   // margin: EdgeInsets.symmetric(
            //   //   horizontal: 15,
            //   // ),
            //   padding: const EdgeInsets.symmetric(
            //     horizontal: 10,
            //     vertical: 10,
            //   ),
            //   decoration: BoxDecoration(
            //       // gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            //       //   // Color(0xffFBE8EB),
            //       //   Colors.cyan.withOpacity(0.2),
            //       //   Colors.cyan.withOpacity(0.3),
            //       //   Colors.cyan.withOpacity(0.5),
            //       //
            //       //
            //       // ]),
            //   ),
            //   child: Column(
            //     children: [
            //       Row(
            //         children: [
            //           Expanded(
            //               child: Container(
            //             height: 150,
            //                 decoration: BoxDecoration(
            //                   color: Colors.white,
            //                   boxShadow: [
            //                     BoxShadow(
            //                       color: Colors.grey.withOpacity(0.5),
            //                       blurRadius: 3,
            //                       offset: Offset(4, 3), // Shadow position
            //                     ),
            //                     BoxShadow(
            //                       color: Colors.grey.withOpacity(0.3),
            //                       blurRadius: 3,
            //                       offset: Offset(-4, -3), // Shadow position
            //                     ),
            //                   ],
            //                   borderRadius: BorderRadius.circular(12)
            //                 ),
            //             width: 200,
            //           )),
            //           SizedBox(
            //             width: 10,
            //           ),
            //           Expanded(
            //               child: Container(
            //             height: 150,
            //                 decoration: BoxDecoration(
            //                   color: Colors.white,
            //                   boxShadow: [
            //                     BoxShadow(
            //                       color: Colors.grey.withOpacity(0.5),
            //                       blurRadius: 3,
            //                       offset: Offset(4, 3), // Shadow position
            //                     ),
            //                     BoxShadow(
            //                       color: Colors.grey.withOpacity(0.3),
            //                       blurRadius: 3,
            //                       offset: Offset(-4, -3), // Shadow position
            //                     ),
            //                   ],
            //                   borderRadius: BorderRadius.circular(15)
            //                 ),
            //             width: 200,
            //           ))
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              margin: EdgeInsets.symmetric( vertical: 10),
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 3,
                                    offset: Offset(4, 3), // Shadow position
                                  ),
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    blurRadius: 3,
                                    offset: Offset(-4, -3), // Shadow position
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(12)
                            ),
                            width: 200,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 3,
                                    offset: Offset(4, 3), // Shadow position
                                  ),
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    blurRadius: 3,
                                    offset: Offset(-4, -3), // Shadow position
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(15)
                            ),
                            width: 200,
                          ))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  blurRadius: 3,
                                  offset: Offset(4, 3), // Shadow position
                                ),
                              ],
                                borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(5),bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5))

                            ),

                        width: 250,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text(
                                  "Cash On Hand",
                                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "Zero",
                                  style: TextStyle(fontSize: 22),
                                ),
                              ],
                            ),
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                        height: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  blurRadius: 3,
                                  offset: Offset(4, 3), // Shadow position
                                ),
                              ],
                              borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(5),bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5))
                            ),
                        width: 250,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Cash On Hand",
                                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "Zero",
                                  style: TextStyle(fontSize: 22),
                                ),SizedBox(height: 10,),
                                Text(
                                  "Cash On Hand",
                                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                        height: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  blurRadius: 3,
                                  offset: Offset(4, 3), // Shadow position
                                ),

                              ],
                                borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(5),bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5))

                            ),
                        width: 250,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Unfund",
                                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "Zero",
                                  style: TextStyle(fontSize: 22),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
