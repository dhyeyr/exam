import 'package:exam/shopping%20cart.dart';
import 'package:exam/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class menu extends StatefulWidget {
  Map map={};
  menu({super.key,required this.map});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return shopping();
                    },
                  ),
                );
              },
              child: Icon(Icons.shopping_cart,color: Colors.black,)),
          Padding(padding: EdgeInsets.all(4)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 900,
                  width: 200,
                  color: Colors.redAccent,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70, left: 30),
                    child: Text(
                      "Salads\nMenu",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 300, left: 30),
                  height: 400,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 70, top: 30),
                    child: Text.rich(
                      TextSpan(
                        text: " ${widget.map["name"]} :\n",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text:
                            " ${widget.map["dec"]} " ,
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 630, left: 80),
                  child: RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 30.0,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 660, left: 85),
                  child: Text.rich(
                    TextSpan(
                      text: "250g                                       ",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                      children: [
                        TextSpan(
                          text: "8.00'",
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 330, left: 10),
                  child: Container(
                      clipBehavior: Clip.antiAlias,
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(spreadRadius: 0)]),
                      child: Image.asset("${widget.map["image"]}",
                          height: 80, width: 80, fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 600, left: 305),
                  child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.redAccent,
                          boxShadow: [
                            BoxShadow(blurRadius: 2, spreadRadius: 0)
                          ]),
                      child: IconButton(
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),            
                        onPressed: () {

                          cartList.add(widget.map);
                          print(cartList);
                          setState(() {});
                        },
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 450, left: 35),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 490, left: 35),
                  child: Icon(
                    Icons.mode_comment_outlined,
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 530, left: 35),
                  child: Icon(
                    Icons.forward,
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 720, left: 30),
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 70, top: 30),
                    child: Text(
                      "Savannah chopped \n salad",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 820, left: 100),
                  child: RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 30.0,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 750, left: 10),
                  child: Container(
                      clipBehavior: Clip.antiAlias,
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(spreadRadius: 0)]),
                      child: Image.asset("images/salad1.jpg",
                          height: 80, width: 80, fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 800, left: 305),
                  child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(blurRadius: 2, spreadRadius: 0)
                          ]),
                      child: IconButton(
                        icon: Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                        onPressed: () {


                        },
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
