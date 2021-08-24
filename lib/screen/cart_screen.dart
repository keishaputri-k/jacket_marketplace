import 'package:flutter/material.dart';
import 'package:jacket_marketplace/model/cart.dart';
import 'package:jacket_marketplace/model/jacket.dart';
import 'package:jacket_marketplace/screen/checkout_screen.dart';
import 'package:jacket_marketplace/util/widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool isFbCheckoutVisible = false;

  @override
  Widget build(BuildContext context) {
    if (cartList.length > 0) {
      isFbCheckoutVisible = true;
    }
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black87,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'cart',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      floatingActionButton: Visibility(
        visible: isFbCheckoutVisible,
        child: Container(
          padding: EdgeInsets.only(left: 16),
          margin: EdgeInsets.only(left: 16),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CheckoutScreen();
              }));
            },
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(1000, 4, 93, 42)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Checkout'),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
          child: cartList.length > 0
              ? Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: ListView.builder(
              itemBuilder: (context, index) {
                var jacket = findJacket(cartList[index]);
                return Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          child: Container(
                              child: Image.network(jacket.jacketImage),
                              decoration:
                              BoxDecoration(color: jacket.jacketColor)),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(jacket.jacketName,
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 18)),
                              SizedBox(height: 16),
                              Text(dollarCurrencyFormat
                                  .format(jacket.jacketPrice))
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                            onPressed: () {
                              deleteItemCart(jacket.jacketId);
                            },
                            icon: Icon(Icons.delete, color: Colors.grey)),
                      )
                    ],
                  ),
                );
              },
              itemCount: cartList.length,
            ),
          )
              : Center(child: Text('Empty cart, please add some item'))),
    );
  }

  Jacket findJacket(Cart cartItem) {
    return jacketList.firstWhere((jacket) => jacket.jacketId == cartItem.jacketId);
  }

  deleteItemCart(int jacketId) {
    setState(() {
      cartList.removeWhere((cartItem) => cartItem.jacketId == jacketId);
      if (cartList.length == 0) {}
    });
  }
}
