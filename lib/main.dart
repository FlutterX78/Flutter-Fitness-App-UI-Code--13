import 'package:code/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  final bnb = [
    Icons.home,
    Icons.whatshot_outlined,
    Icons.settings,
    Icons.person_outline_rounded
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xFFeff3ff),
            bottomNavigationBar: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 90,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: AnimatedContainer(
                                  duration: Duration(milliseconds: 200),
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFeff3ff),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      boxShadow: selectedIndex == index
                                          ? pressedShadow
                                          : genShadow),
                                  child: Icon(
                                    bnb[index],
                                    size: 30,
                                    color: selectedIndex == index
                                        ? Color(0xff5563de)
                                        : Colors.grey.shade500,
                                  )),
                            ),
                          )),
                )),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text(
                          'Find A',
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Workout',
                          style: GoogleFonts.montserrat(
                              color: Color(0xff5563de),
                              fontSize: 30,
                              fontWeight: FontWeight.w500),
                        ),
                        Expanded(child: SizedBox()),
                        Icon(Icons.search_rounded)
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Stack(
                      children: [
                        Image.network(
                          'https://i.postimg.cc/bNpcZDW5/Rectangle-2217-1-X.png',
                        ),
                        Positioned(
                          top: 30,
                          right: 25,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Legs and \nGlutes workout',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Advanced',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '45 Min',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white12,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: Text(
                                    'Start Workout',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Text(
                          "Today's Activity",
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Expanded(child: SizedBox()),
                        Text(
                          "Details",
                          style: GoogleFonts.montserrat(
                              color: Color(0xff5563de),
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        Icon(Icons.arrow_forward_sharp,
                            color: Color(0xff5563de))
                      ],
                    ),
                    Container(
                      height: size.height * 0.15,
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: ta.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) =>
                              tactivityButton(index)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text(
                          "Daily Activity",
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Expanded(child: SizedBox()),
                        Text(
                          "Details",
                          style: GoogleFonts.montserrat(
                              color: Color(0xff5563de),
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        Icon(Icons.arrow_forward_sharp,
                            color: Color(0xff5563de))
                      ],
                    ),
                    Container(
                      height: size.height * 0.2,
                      child: ListView.builder(
                          itemCount: 5,
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) =>
                              dactivityButton(index)),
                    ),
                  ],
                ),
              ),
            )));
  }

  Widget dactivityButton(index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      width: 90,
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                da[index].day,
                style: GoogleFonts.montserrat(
                    color: Colors.grey.shade600,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                da[index].date,
                style: GoogleFonts.montserrat(
                    color: Color(0xff5563de),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
      decoration: BoxDecoration(
        color: Color(0xFFeff3ff),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: genShadow,
      ),
    );
  }

  Widget tactivityButton(index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      height: 200,
      width: 150,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              ta[index].imgUrl,
              color: Color(0xff5563de),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  ta[index].param,
                  style: GoogleFonts.montserrat(
                      color: Colors.grey.shade600,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  ta[index].value,
                  style: GoogleFonts.montserrat(
                      color: Color(0xff5563de),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: Color(0xFFeff3ff),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: genShadow),
    );
  }
}
