import 'package:appp/products/clothes.dart';
import 'package:appp/products/mobiles.dart';
import 'package:appp/products/shoes.dart';
import 'package:flutter/material.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Row(
            children: [
              const SizedBox(
                height: 65,
              ),
              const SizedBox(
                height: 10,
                width: 20,
              ),
              Container(
                height: 40,
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey.shade200,
                  border: Border.all(color: Colors.white30),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "search..",
                    contentPadding: EdgeInsets.all(10),
                    icon: Icon(
                      Icons.search,
                      size: 20,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart),
                    iconSize: 28,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Center(
                child: Column(),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Center(
          child: Container(
            height: 100,
            width: 315,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 53, 79, 182),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.white24, width: 1.5),
            ),
            child: const Column(
              children: [
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Super Sale Offer",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "CashBack 50%",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.electric_bolt,
                      color: Color.fromARGB(231, 149, 31, 13),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Flash Deals",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.book,
                      color: Color.fromARGB(231, 149, 31, 13),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Bills",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.card_giftcard,
                      color: Color.fromARGB(231, 149, 31, 13),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Gifts",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Color.fromARGB(231, 149, 31, 13),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "More",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 25,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Mobiles()));
                  },
                  child: SizedBox(
                      height: 110,
                      width: 220,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          children: [
                            Image.asset(
                              "assets/images/abc.png",
                              fit: BoxFit.cover,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                    Colors.black.withOpacity(0.7),
                                    Colors.transparent.withOpacity(0.06)
                                  ])),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 19, vertical: 14),
                              child: Text.rich(TextSpan(
                                  style: TextStyle(color: Colors.white),
                                  children: [
                                    TextSpan(
                                        text: "Electronics\n",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: "10 Brands",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold))
                                  ])),
                            )
                          ],
                        ),
                      )),
                ),
                const SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Clothes()));
                  },
                  child: SizedBox(
                      height: 110,
                      width: 220,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          children: [
                            Image.asset(
                              "assets/images/abcd.jpg",
                              fit: BoxFit.cover,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                    Colors.black.withOpacity(0.5),
                                    Colors.transparent.withOpacity(0.06)
                                  ])),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 19, vertical: 14),
                              child: Text.rich(TextSpan(
                                  style: TextStyle(color: Colors.white),
                                  children: [
                                    TextSpan(
                                        text: "Clothes\n",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: "10 Brands",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold))
                                  ])),
                            )
                          ],
                        ),
                      )),
                ),
                const SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Shoes()));
                  },
                  child: SizedBox(
                      height: 110,
                      width: 220,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          children: [
                            Image.asset(
                              "assets/images/flash.jpg",
                              fit: BoxFit.cover,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                    Colors.black.withOpacity(0.5),
                                    Colors.transparent.withOpacity(0.06)
                                  ])),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 19, vertical: 13),
                              child: Text.rich(TextSpan(
                                  style: TextStyle(color: Colors.white),
                                  children: [
                                    TextSpan(
                                        text: "Shoes\n",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: "5 Brands",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold))
                                  ])),
                            )
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
