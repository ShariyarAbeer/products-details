import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class ApiCall extends StatefulWidget {
  const ApiCall({Key key}) : super(key: key);

  @override
  _ApiCallState createState() => _ApiCallState();
}

class _ApiCallState extends State<ApiCall> {
  Future<Item> futureItem;
  @override
  void initState() {
    super.initState();
    futureItem = fetchItem();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff616161),
            size: 15.0,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Bike Details",
          style: TextStyle(
            color: Color(0xff242424),
            fontWeight: FontWeight.w700,
            fontSize: 18.0,
          ),
        ),
      ),
      body: Container(
        child: FutureBuilder<Item>(
          future: futureItem,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return getItems(
                snapshot.data.image,
                snapshot.data.product_name,
                snapshot.data.product_price,
              );
              // Text(snapshot.data.product_name);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return Center(child: const CircularProgressIndicator());
          },
        ),
      ),
    );
  }

  Widget getItems(String image, String name, int price) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200.0,
            child: Image.network(image),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, top: 5.0, right: 15.0, bottom: 5.0),
              child: Text(
                name,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 5.0, right: 8.0, left: 5.0),
            child: Text(
              "BDT " + price.toString(),
              style: TextStyle(
                color: Color(0xffDD3935),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<Item> fetchItem() async {
  final response = await http.get(Uri.parse(
      'http://3.1.180.10/api/product-core/suzuki-gsx-r150-fi-dual-channel-abs-yvj2/0/'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Item.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load Item');
  }
}

class Item {
  final String product_name;
  final String image;
  final int product_price;

  Item({
    this.product_name,
    this.image,
    this.product_price,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      product_name: json['product_name'],
      image: json['image'],
      product_price: json['product_price'],
    );
  }
}
