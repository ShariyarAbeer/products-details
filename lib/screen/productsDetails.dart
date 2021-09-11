import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ProductsDetails extends StatelessWidget {
  const ProductsDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: ListView(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 5.0, right: 5.0, top: 8.0, bottom: 5.0),
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
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200.0,
                  color: Colors.white,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0)),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("assets/image/bike.png"),
                            fit: BoxFit.cover)),
                  ),
                ),
                Positioned.fill(
                  bottom: 10.0,
                  right: 25.0,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 8.0,
                      width: 8.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Color(0xff4C4F56)),
                    ),
                  ),
                ),
                Positioned.fill(
                  bottom: 10.0,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 8.0,
                      width: 8.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Color(0xff868991)),
                    ),
                  ),
                ),
                Positioned.fill(
                  bottom: 10.0,
                  left: 25.0,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 8.0,
                      width: 8.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Color(0xff868991)),
                    ),
                  ),
                ),
                Positioned.fill(
                  bottom: 10.0,
                  left: 50.0,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 8.0,
                      width: 8.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Color(0xff868991)),
                    ),
                  ),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, top: 5.0, right: 10.0, bottom: 5.0),
                child: Text(
                  "Lorem ipsum dolor sit amet,consectetur adipiscing elit. Non purus, odio ornare nam eleifend amet",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 8.0, right: 15.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            top: 5.0, right: 8.0, left: 5.0),
                        child: Text(
                          "BDT 1,225,236",
                          style: TextStyle(
                            color: Color(0xffDD3935),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 8.0, left: 5.0),
                        child: Text(
                          "BDT 2,000,000",
                          style: TextStyle(
                            color: Color(0xff616161),
                            decoration: TextDecoration.lineThrough,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 63.0,
                        height: 23.0,
                        padding: const EdgeInsets.only(right: 8.0, left: 5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color(0xffDD3935)),
                        child: Text(
                          "50% Off",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
                    child: SmoothStarRating(
                      starCount: 5,
                      size: 20.0,
                      color: Colors.amber[800],
                      borderColor: Colors.grey,
                      rating: 5,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 8.0, top: 5.0, bottom: 8.0),
                    child: Text(
                      "Select Color",
                      style: TextStyle(
                        color: Color(0xff242424),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, top: 5.0, bottom: 15.0),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 64.0,
                          height: 32.0,
                          padding: const EdgeInsets.only(right: 8.0, left: 5.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xff242424), width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            "Black",
                            style: TextStyle(
                              color: Color(0xff242424),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 64.0,
                          height: 32.0,
                          padding: const EdgeInsets.only(right: 8.0, left: 5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Color(0xffF2C94C)),
                          child: Text(
                            "Yellow",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 64.0,
                          height: 32.0,
                          padding: const EdgeInsets.only(right: 8.0, left: 5.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xffDD3935), width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            "Red",
                            style: TextStyle(
                              color: Color(0xff242424),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 64.0,
                          height: 32.0,
                          padding: const EdgeInsets.only(right: 8.0, left: 5.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xff2F80ED), width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            "Blue",
                            style: TextStyle(
                              color: Color(0xff242424),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
