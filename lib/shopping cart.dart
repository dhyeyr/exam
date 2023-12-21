import 'package:exam/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class shopping extends StatefulWidget {
  const shopping({super.key});

  @override
  State<shopping> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<shopping> {
  var qty = 1;
  var sub = 0;
  var del = 5;
  double total = 0;
  var size = 1;


  @override
  Widget build(BuildContext context) {

    sub = 0;
    cartList.forEach((element) {
      int p = element["price"] * element["qty"];
      print("");
      sub = sub + p;
    });
    total = 0;
    cartList.forEach((element) {
      num p = sub + element["del"];
      print("");
      total = total + p;
    });
    return Scaffold(
      backgroundColor: Colors.redAccent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150, left: 30),
            child: Text(
              'Shoping \nCart',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: cartList.map((e) {
                    return Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 30),
                          height: 160,
                          width: 330,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                )
                              ]),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 70, top: 30),
                                child: Text(
                                  "${e["name"]}",
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 105, left: 110),
                          child: RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 30.0,
                            itemBuilder: (context, _) =>
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50, left: 8),
                          child: Container(
                              clipBehavior: Clip.antiAlias,
                              height: 75,
                              width: 75,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(1, 1),
                                      blurRadius: 10,
                                    )
                                  ]),
                              child: Image.asset("${e["image"]}",
                                  height: 80, width: 80, fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 140, left: 110),
                          child: Text.rich(
                            TextSpan(
                              text: "250g                                         ",
                              style: TextStyle(fontSize: 15, color: Colors.grey),
                              children: [
                                TextSpan(
                                  text: "${e["price"] * e["qty"]}'",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 60, left: 340),
                          child: Container(
                            height: 90,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(1, 1),
                                    blurRadius: 10,
                                  )
                                ]),
                            child: Column(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(top: 7),
                                  child: InkWell(
                                      onTap: () {
                                        if (qty == 0) {
                                          cartList
                                              .remove(e);
                                        } else {
                                          e["qty"] = qty;
                                          qty = qty - 1;
                                        }
                                        setState(() {});
                                      },
                                      child: Icon(
                                          Icons.remove,
                                          color: Colors
                                              .black)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(  "${e["qty".toString()]}",
                                      style: TextStyle(
                                          fontSize: 19, color: Colors.black)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: InkWell(
                                      onTap: () {
                                        e["qty"] = qty;
                                        qty = qty + 1;
                                        setState(() {});
                                      },
                                      child: Icon(
                                          Icons.add,
                                          color: Colors
                                              .black)),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  }).toList(),

                ),
              ),



          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 310.5),
                height: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
              ),
              Column(
                children: [

                  Container(
                    margin: EdgeInsets.only(right: 30, left: 30),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                            BorderSide(color: Colors.grey, width: 1))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 350),
                          child: Text(
                            'Subtotal',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 355, left: 20),
                          child: Text('\$$sub',
                              style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    ),
                  ),

              Container(
                margin: EdgeInsets.only(right: 30, left: 30, top: 10),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                        BorderSide(color: Colors.grey, width: 1))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        'Delivery',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 20),
                      child: Text('\$$del',
                          style: TextStyle(fontSize: 20)),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 30, left: 30, top: 10),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                        BorderSide(color: Colors.grey, width: 1))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        'Total',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 20),
                      child: Text('\$ $total',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 300,
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Center(
                  child: Text(
                    'CHECKOUT',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(blurRadius: 10, color: Colors.green)
                    ]),
              ),
                ],
              ),
            ],
          ),
            ],
          ),
        ],
      ),
    );
  }
}

