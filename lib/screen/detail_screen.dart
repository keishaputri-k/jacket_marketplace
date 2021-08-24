import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:jacket_marketplace/model/cart.dart';
import 'package:jacket_marketplace/model/jacket.dart';
import 'package:jacket_marketplace/util/badge.dart';
import 'package:jacket_marketplace/util/widget.dart';

import 'cart_screen.dart';
import 'checkout_screen.dart';

class DetailScreen extends StatefulWidget {
  final Jacket jacket;

  const DetailScreen({required this.jacket});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  color: widget.jacket.jacketColor,
                  child: Image.network(
                    widget.jacket.jacketImage,
                    width: double.infinity,
                  ),
                ),
                SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              IconButton(
                                icon: Icon(Icons.shopping_cart_outlined,
                                    color: Colors.black),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                        return CartScreen();
                                      })).then((value) => setState(() {}));
                                },
                              ),
                              cartList.length > 0
                                  ? Badge(numberValue: cartList.length.toString())
                                  : Container()
                            ],
                          )
                        ],
                      ),
                    )),
              ],
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -40.0, 0.0),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 300,
                                  child: Text(
                                    widget.jacket.jacketName,
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 24),
                                  ),
                                ),
                                Text(
                                  widget.jacket.jacketBrand,
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 4),
                                )
                              ]),
                          Text(
                            dollarCurrencyFormat
                                .format(widget.jacket.jacketPrice),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text('description'),
                      Text(
                        widget.jacket.jacketDescription,
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                addToCart(widget.jacket.jacketId, context);
                              },
                              child: Icon(Icons.add_shopping_cart_outlined),
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(0, 255, 255, 255),
                                  padding: EdgeInsets.all(14.0)),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 16),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Color.fromARGB(100, 4, 93, 42),
                                      padding: EdgeInsets.all(16)),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context){
                                      return CheckoutScreen();
                                    }));
                                  },
                                  child: Text('Buy Now',
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void addToCart(jacketId, context){
    bool isItemExist = false;
    if(cartList.firstWhereOrNull((cartItem) => cartItem.jacketId == jacketId) != null){
      isItemExist = true;
    }
    if(isItemExist){
      final snackBar = SnackBar(content: Text('Item already in cart'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }else{
      setState(() {
        cartList.add(Cart(jacketId: jacketId));
      });
      final snackBar = SnackBar(content: Text('Item added to cart!'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}