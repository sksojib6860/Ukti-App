import 'package:flutter/material.dart';

import 'saheri_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // static const String _url =
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                      height: 550,
                      // width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        image: const DecorationImage(
                            image: AssetImage("assets/homayun.jpg"),
                            opacity: 0.6,
                            fit: BoxFit.cover),
                      )),
                  Positioned(
                    left: 10,
                    right: 10,
                    top: 30,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "বাংলা উক্তি সমগ্র",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Color.fromARGB(255, 7, 246, 99),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          decorationColor: Colors.black
                            
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "” জীবনে কখনো কাউকে বিশ্বাস করতে যেও না।\n কারন,যাকেই তুমি বিশ্বাস করবে সেই তোমাকে ঠকাবে। ”",
                          // textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Color.fromARGB(255, 1, 18, 255),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                       
                        SizedBox(
                          height: 70,
                        ),
                        //   nativeAd(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // ignore: unused_element
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SehariHome_Screen()));
                        },
                        child: SizedBox(
                          height: 50,
                          child: Stack(children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/button-ground-01.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Center(
                              child: Column(
                                children: const [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "বিখ্যাত ব্যক্তি ও মনীষীদের সেরা উক্তি সমূহ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      Stack(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              // onTap: _launchURL,
                              child: Container(
                                height: 50,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/button-ground-01.jpg"),
                                    )),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                        image:
                                            AssetImage("assets/app-icon.png"),
                                      )),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    const Text(
                                      "অন্যন্য অ্যাপ",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 50,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/button-ground-01.jpg"),
                                    )),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            "assets/ratting-icon.png"),
                                      )),
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    const Text(
                                      "রেটিং",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                      const SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        child: Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: const DecorationImage(
                                image:
                                    AssetImage("assets/button-ground-01.jpg"),
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage("assets/Shareicon.png"),
                                )),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                "শেয়ার",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
