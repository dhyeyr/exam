import 'package:exam/menu.dart';
import 'package:exam/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Icon(
            Icons.shopping_cart,
            color: Colors.black,
          )
        ],
      ),
      drawer: Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.redAccent,
            height: 150,
            width: 90,
          ),
          Stack(
            children: [
              Container(
                color: Colors.redAccent,
                height: 684,
                width: 90,
              ),


              Column(
                children: productList.map((e) {
                  return

                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 50, right: 30),
                        height: 100,
                        width: double.infinity,
                        color: Colors.white,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 1,
                                color: Colors.grey,
                                spreadRadius: 0,
                              )
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 60,top: 20),
                              child: Text(e['name'],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60,top: 0),
                              child: Text(e['Items'],style: TextStyle(fontSize: 20,color: Colors.grey),),
                            )
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            margin: EdgeInsets.only(top: 30, left: 15),
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.grey, shape: BoxShape.circle),
                            child: Image.asset(
                              e['image'],
                              fit: BoxFit.cover,

                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 45, left: 340),
                        child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(blurRadius: 2, spreadRadius: 0)
                                ]),
                            child: IconButton(
                              icon: Icon(Icons.navigate_next),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)
                                    {
                                      return menu(map: e);
                                    },
                                    ));
                              },
                            )),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ],
          )
        ],
      ),
    );
  }
}

//
//
// Container(
// margin: EdgeInsets.only(top: 250, left: 50, right: 30),
// height: 100,
// width: double.infinity,
// color: Colors.white,
// clipBehavior: Clip.antiAlias,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// boxShadow: [
// BoxShadow(
// blurRadius: 1,
// color: Colors.grey,
// spreadRadius: 0,
// )
// ]),
// child: Padding(
// padding: const EdgeInsets.only(left: 50, top: 20),
// child: Text.rich(
// TextSpan(
// text: "salad \n",
// style:
// TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
// children: [
// TextSpan(
// text: "30 item",
// style: TextStyle(fontSize: 20, color: Colors.grey),
// ),
// ],
// ),
// ),
// ),
// ),
// Container(
// clipBehavior: Clip.antiAlias,
// margin: EdgeInsets.only(top: 260, left: 15),
// height: 80,
// width: 80,
// decoration:
// BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
// child: Image.asset(
// "images/salad2.jpg",
// fit: BoxFit.cover,
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(top: 278, left:340 ),
// child: Container(
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// boxShadow: [
// BoxShadow(
// blurRadius: 2,
// spreadRadius: 0
// )
// ]
// ),
// child: IconButton(
// icon: Icon(Icons.navigate_next),
// onPressed: () {},
// )
//
//
// ),
// ),
//
// Container(
// margin: EdgeInsets.only(top: 370, left: 50, right: 30),
// height: 100,
// width: double.infinity,
// color: Colors.white,
// clipBehavior: Clip.antiAlias,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// boxShadow: [
// BoxShadow(
// blurRadius: 1,
// color: Colors.grey,
// spreadRadius: 0,
// )
// ]),
// child: Padding(
// padding: const EdgeInsets.only(left: 50, top: 20),
// child: Text.rich(
// TextSpan(
// text: "desserts \n",
// style:
// TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
// children: [
// TextSpan(
// text: "25 item",
// style: TextStyle(fontSize: 20, color: Colors.grey),
// ),
// ],
// ),
// ),
// ),
// ),
// Container(
// clipBehavior: Clip.antiAlias,
// margin: EdgeInsets.only(top: 380, left: 15),
// height: 80,
// width: 80,
// decoration:
// BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
// child: Image.asset(
// "images/salad1.jpg",
// fit: BoxFit.cover,
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(top: 396, left:340 ),
// child: Container(
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// boxShadow: [
// BoxShadow(
// blurRadius: 2,
// spreadRadius: 0
// )
// ]
// ),
// child: IconButton(
// icon: Icon(Icons.navigate_next),
// onPressed: () {},
// )
//
// ),
// ),
//
// Container(
// margin: EdgeInsets.only(top: 490, left: 50, right: 30),
// height: 100,
// width: double.infinity,
// color: Colors.white,
// clipBehavior: Clip.antiAlias,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// boxShadow: [
// BoxShadow(
// blurRadius: 1,
// color: Colors.grey,
// spreadRadius: 0,
// )
// ]),
// child: Padding(
// padding: const EdgeInsets.only(left: 50, top: 20),
// child: Text.rich(
// TextSpan(
// text: "Pasta \n",
// style:
// TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
// children: [
// TextSpan(
// text: "25 item",
// style: TextStyle(fontSize: 20, color: Colors.grey),
// ),
// ],
// ),
// ),
// ),
// ),
// Container(
// clipBehavior: Clip.antiAlias,
// margin: EdgeInsets.only(top: 500, left: 15),
// height: 80,
// width: 80,
// decoration:
// BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
// child: Image.asset(
// "images/salad1.jpg",
// fit: BoxFit.cover,
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(top: 518, left:340 ),
// child: Container(
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// boxShadow: [
// BoxShadow(
// blurRadius: 2,
// spreadRadius: 0
// )
// ]
// ),
// child: IconButton(
// icon: Icon(Icons.navigate_next),
// onPressed: () {},
// )
//
// ),
// ),
//
// Container(
// margin: EdgeInsets.only(top: 610, left: 50, right: 30),
// height: 100,
// width: double.infinity,
// color: Colors.white,
// clipBehavior: Clip.antiAlias,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// boxShadow: [
// BoxShadow(
// blurRadius: 1,
// color: Colors.grey,
// spreadRadius: 0,
// )
// ]),
// child: Padding(
// padding: const EdgeInsets.only(left: 50, top: 20),
// child: Text.rich(
// TextSpan(
// text: "Beverages \n",
// style:
// TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
// children: [
// TextSpan(
// text: "25 item",
// style: TextStyle(fontSize: 20, color: Colors.grey),
// ),
// ],
// ),
// ),
// ),
// ),
// Container(
// clipBehavior: Clip.antiAlias,
// margin: EdgeInsets.only(top: 620, left: 15),
// height: 80,
// width: 80,
// decoration:
// BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
// child: Image.asset(
// "images/salad3.jpg",
// fit: BoxFit.cover,
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(top: 640, left:340 ),
// child: Container(
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// boxShadow: [
// BoxShadow(
// blurRadius: 2,
// spreadRadius: 0
// )
// ]
// ),
// child: IconButton(
// icon: Icon(Icons.navigate_next),
// onPressed: () {},
// )
//
// ),
// )
