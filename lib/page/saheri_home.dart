// ignore_for_file: camel_case_types, null_check_always_fails

import 'package:flutter/material.dart';
import 'package:ukti_app/widget/custom_color.dart';
import '../model/sharitime.dart';
import 'sura.dart';
import 'surasomuh.dart';
import 'package:url_launcher/url_launcher.dart';

class SehariHome_Screen extends StatefulWidget {
  
  SehariHome_Screen({Key? key}) : super(key: key);
  // ignore: unused_field
  final Shaeri _shaeri = Shaeri();

  @override
  State<SehariHome_Screen> createState() => _SehariHome_ScreenState();
}
  AllColor allColor = AllColor();

class _SehariHome_ScreenState extends State<SehariHome_Screen> {
  // ignore: prefer_final_fields

  static const String _url = "https://appstor-bd.com/";
  static const String _url1 =
      "https://play.google.com/store/apps/dev?id=6640922818080341247&hl=en_US&gl=US";

  // @override
  // void initState() {
  //   super.initState();
  //   openingAd;
  //   print("000000000000-------00000000000000");
  // }

  void _launchURL() async {
    // ignore: deprecated_member_use
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  void _launchURL1() async {
    // ignore: deprecated_member_use
    if (!await launch(_url1)) throw 'Could not launch $_url1';
  }

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text("বিখ্যাত ব্যক্তি ও মনীষীদের সেরা উক্তি সমূহ"),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                  Color.fromARGB(255, 20, 178, 41),
                  Color.fromARGB(124, 37, 219, 222)
                ])),
          )),
      drawer: Drawer(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: const Color.fromARGB(255, 26, 229, 11)),
                  gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                    Color.fromARGB(255, 20, 178, 41),
                   Color.fromARGB(124, 37, 219, 222)
                  ])),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    CircleAvatar(
                      maxRadius: 30,
                      backgroundImage: AssetImage("assets/SPLASH SCEEN.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "বিখ্যাত ব্যক্তি ও \nমনীষীদের সেরা উক্তি সমূহ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Version: 1.0.0',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Sura()));
                    },
                    child: Row(
                      children: const [
                        CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage("assets/SPLASH SCEEN.jpg")),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "বিখ্যাত উক্তি ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const SuraSomuh()));
                    },
                    child: Row(
                      children: const [
                        CircleAvatar(
                          maxRadius: 20,
                          backgroundImage: AssetImage("assets/SPLASH SCEEN.jpg"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "মনীষীদের সেরা উক্তি সমূহ ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.removeRoute(context, null!);
                    },
                    child: Row(
                      children: const [
                        CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/SPLASH SCEEN.jpg")),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "বিখ্যাত শিক্ষামূলক উক্তি",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Color.fromRGBO(243, 213, 123, 1),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: _launchURL,
                    child: Row(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/wbicon.png"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "ওয়েভ সাইট ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: _launchURL1,
                    child: Row(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/playstore2.png"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "অন্যন্য অ্যাপ ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //  BannerAdmob(),
                ],
              ),
            )
          ],
        ),
      )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 460,
              child: Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      image: DecorationImage(
                        image: AssetImage("assets/body.png"),
                        fit: BoxFit.fill,
                      )),
                ),
              ]),
            ),
            const SizedBox(
              height: 30,
            ),
            //   FacebookAdd(),
            const SizedBox(height: 10),
            SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Sura()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                  ),
                  child: Ink(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color.fromARGB(236, 6, 140, 86),
                          Color.fromARGB(175, 12, 155, 76)
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: Container(
                      constraints: const BoxConstraints(
                          minWidth: 88.0,
                          minHeight: 36.0), // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: const Text(
                        'বিখ্যাত উক্তি',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const SuraSomuh()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                  ),
                  child: Ink(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color.fromARGB(236, 6, 140, 86),
                          Color.fromARGB(175, 12, 155, 76)
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: Container(
                      constraints: const BoxConstraints(
                          minWidth: 88.0,
                          minHeight: 36.0), // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: const Text(
                        'মনীষীদের সেরা উক্তি সমূহ ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.removeRoute(context, null!);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                  ),
                  child: Ink(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color.fromARGB(236, 6, 140, 86),
                          Color.fromARGB(175, 12, 155, 76)
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Container(
                      constraints: const BoxConstraints(
                          minWidth: 88.0,
                          minHeight: 36.0), // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: const Text(
                        'বিখ্যাত শিক্ষামূলক উক্তি',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
