import 'package:ecom_plant/constants.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description(
      {Key? key,
      required this.image,
      required this.title,
      required this.country,
      required this.price})
      : super(key: key);
  final String image, title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * .76,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: IconButton(
                                onPressed: () => Navigator.pop(context),
                                icon: Icon(Icons.arrow_back_ios_new_rounded),
                              ),
                            ),
                          ),
                          Spacer(),
                          FeatureWidget(
                            image: "assets/icons/sun.png",
                          ),
                          FeatureWidget(
                            image: "assets/icons/humidity.png",
                          ),
                          FeatureWidget(
                            image: "assets/icons/temp.png",
                          ),
                          FeatureWidget(
                            image: "assets/icons/waves.png",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // height: size.heighst * .8,
                    width: size.width * .7,
                    decoration: BoxDecoration(
                        // color: Colors.green.withOpacity(.5),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                            topLeft: Radius.circular(60)),
                        color: Colors.green.withOpacity(.2),
                        // boxShadow: [
                        //   BoxShadow(
                        //       offset: Offset(0, 10),
                        //       blurRadius: 10,
                        //       color: kTextColor.withOpacity(.2))
                        // ],
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                              image,
                            ))),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * .04,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(
                    children: [
                      TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 32,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "$country",
                          style: TextStyle(color: Colors.green, fontSize: 16))
                    ],
                  )),
                  Text(
                    "₹$price",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * .03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: size.height * 0.1,
                  width: size.width * 0.5,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                      )),
                  child: Center(
                      child: Text(
                    "Buy Now",
                    style: TextStyle(
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "Description",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FeatureWidget extends StatelessWidget {
  const FeatureWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height * .07,
        width: size.height * .07,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 20,
                  color: Colors.green.withOpacity(.8)),
              BoxShadow(
                  offset: Offset(-5, -5),
                  blurRadius: 20,
                  color: kTextColor.withOpacity(.2))
            ]),
        child: Image.asset(image));
  }
}
