import 'package:ecom_plant/Description/description.dart';
import 'package:ecom_plant/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height * .2,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: kTextColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Text(
                    "Hi! Shivam",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                    height: size.height * .07,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: kTextColor.withOpacity(.4))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPaddin),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  color: kTextLightColor.withOpacity(.6),
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.search_rounded,
                            color: kTextLightColor.withOpacity(.6),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
          SizedBox(
            height: size.height * .06,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Row(
              children: [
                Stack(
                  children: [
                    Text(
                      "Recommended",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 4,
                          color: kTextColor.withOpacity(.3),
                        )),
                  ],
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () => {},
                  child: Text("More"),
                )
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PlantCard(
                    size: size,
                    title: "vikna",
                    image: "assets/images/8.png",
                    price: 399,
                    country: "India",
                  ),
                  PlantCard(
                    size: size,
                    title: "Saman",
                    image: "assets/images/1.png",
                    price: 199,
                    country: "India",
                  ),
                  PlantCard(
                    size: size,
                    title: "Apren",
                    image: "assets/images/2.png",
                    price: 299,
                    country: "America",
                  ),
                  PlantCard(
                    size: size,
                    title: "Lenod",
                    image: "assets/images/3.png",
                    price: 159,
                    country: "Russia",
                  ),
                  PlantCard(
                    size: size,
                    title: "Senta",
                    image: "assets/images/4.png",
                    price: 199,
                    country: "Australia",
                  ),
                  PlantCard(
                    size: size,
                    title: "Jazze",
                    image: "assets/images/5.png",
                    price: 189,
                    country: "England",
                  ),
                  PlantCard(
                    size: size,
                    title: "Kantsa",
                    image: "assets/images/6.png",
                    price: 599,
                    country: "Germany",
                  ),
                  PlantCard(
                    size: size,
                    title: "vikna",
                    image: "assets/images/7.png",
                    price: 399,
                    country: "Franch",
                  ),
                ],
              )),
          SizedBox(
            height: size.height * .04,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Row(
              children: [
                Stack(
                  children: [
                    Text(
                      "Featured Plants",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 4,
                          color: kTextColor.withOpacity(.3),
                        )),
                  ],
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () => {},
                  child: Text("More"),
                )
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FeaturedPlantCard(
                    size: size,
                    title: "Saman",
                    image: "assets/images/7.png",
                    price: 199,
                    country: "India",
                  ),
                  FeaturedPlantCard(
                    size: size,
                    title: "Apren",
                    image: "assets/images/6.png",
                    price: 299,
                    country: "America",
                  ),
                  FeaturedPlantCard(
                    size: size,
                    title: "Lenod",
                    image: "assets/images/5.png",
                    price: 159,
                    country: "Russia",
                  ),
                  FeaturedPlantCard(
                    size: size,
                    title: "Senta",
                    image: "assets/images/4.png",
                    price: 199,
                    country: "Australia",
                  ),
                  FeaturedPlantCard(
                    size: size,
                    title: "Jazze",
                    image: "assets/images/3.png",
                    price: 189,
                    country: "England",
                  ),
                  FeaturedPlantCard(
                    size: size,
                    title: "Kantsa",
                    image: "assets/images/2.png",
                    price: 599,
                    country: "Germany",
                  ),
                  FeaturedPlantCard(
                    size: size,
                    title: "vikna",
                    image: "assets/images/1.png",
                    price: 399,
                    country: "Franch",
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class PlantCard extends StatelessWidget {
  const PlantCard({
    Key? key,
    required this.size,
    required this.image,
    required this.country,
    required this.price,
    required this.title,
  }) : super(key: key);

  final Size size;
  final String title, image, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Description(
                    image: image,
                    price: price,
                    country: country,
                    title: title,
                  ))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          // margin: EdgeInsets.symmetric(horiszontal: 7),
          elevation: 10,
          shadowColor: kTextColor,
          child: Container(
              // height: size.height * .27,
              width: size.width * .40,
              child: Column(
                children: [
                  Container(
                    height: size.height * .20,
                    width: size.height * .25,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(.2),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: Image.asset(
                      image,
                      // height: size.height * .25 - 20,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: Row(
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "$title\n".toUpperCase(),
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.8))),
                          TextSpan(
                              text: country,
                              style:
                                  TextStyle(color: kTextColor.withOpacity(.8)))
                        ])),
                        Spacer(),
                        Text(
                          "₹$price",
                          style: TextStyle(
                              color: kTextColor, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key? key,
    required this.size,
    required this.image,
    required this.country,
    required this.price,
    required this.title,
  }) : super(key: key);

  final Size size;
  final String title, image, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        // margin: EdgeInsets.symmetric(horiszontal: 7),
        elevation: 10,
        shadowColor: kTextColor,
        child: Container(
            height: size.height * .40,
            width: size.width * .7,
            decoration: BoxDecoration(
              color: Colors.orange.withOpacity(.1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                image,
                // height: size.height * .25 - 20,
                fit: BoxFit.contain,
              ),
            )),
      ),
    );
  }
}
