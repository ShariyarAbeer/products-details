import 'package:flutter/material.dart';

class ProductsDetails extends StatelessWidget {
  const ProductsDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 5.0, right: 5.0, top: 8.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xff616161),
                        size: 15.0,
                      ),
                      onPressed: () {},
                    ),
                    Text(
                      "Products Details",
                      style: TextStyle(
                        color: Color(0xff242424),
                        fontWeight: FontWeight.w700,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(
                    Icons.share_outlined,
                    color: Color(0xff616161),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0)),
              image: DecorationImage(
                  image: AssetImage("assets/image/bike.png"),
                  fit: BoxFit.cover)),
        ),
      ],
    ));
  }
}
