import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _controller.forward();
    _controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "portofolio.",
          style: GoogleFonts.poppins(
              color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 8.0),
        //   child: Icon(
        //     Icons.code_outlined,
        //     color: Colors.black,
        //     size: 35.0,
        //   ),
        // ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: Drawer(
        elevation: 0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.circle(),
                        lightSource: LightSource.topLeft,
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        "assets/profile.png",
                      ),
                    ),
                  ),
                  Text(
                    "Aakash",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle_outlined,
                size: 30.0,
                color: Colors.black,
              ),
              title: Text(
                "About",
                style: GoogleFonts.poppins(
                    fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.phone_android,
                size: 30.0,
                color: Colors.black,
              ),
              title: Text(
                "Social",
                style: GoogleFonts.poppins(
                    fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.star_border,
                size: 30.0,
                color: Colors.black,
              ),
              title: Text(
                "Skills",
                style: GoogleFonts.poppins(
                    fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Neumorphic(
                  style: const NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.circle(),
                    lightSource: LightSource.bottomRight,
                    color: Colors.greenAccent,
                    oppositeShadowLightSource: true
                    // shadowDarkColor: Colors.black54,
                  ),

                  // radius: 100.0,
                  child: Image.asset(
                    "assets/character-034.png",
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0, left: 20.0),
              child: Text(
                "Hello,\nthis is aakash.",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 40.0),
              ),
            ),
            Column(
              children: [
                Container(
                  height: 350.0,
                  width: 250.0,
                  // padding: const EdgeInsets.only(top: 300.0, left: 5.0, bottom: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        offset: Offset(5, 5),
                        blurRadius: 6.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RotationTransition(
                                turns: Tween(begin: 0.0, end: 0.03)
                                    .animate(_controller),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Image.asset(
                                    "assets/waving.png",
                                    height: 200.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "Hey there!!\nI'm a Developer.",
                              style: GoogleFonts.poppins(
                                  fontSize: 25.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 6.0,
                  color: Colors.black54,
                  height: 50.0,
                  indent: 60.0,
                  endIndent: 60.0,
                ),
                Container(
                  height: 350.0,
                  width: 250.0,
                  // padding: const EdgeInsets.only(top: 300.0, left: 5.0, bottom: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        offset: Offset(5, 5),
                        blurRadius: 6.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "About Me",
                          style: GoogleFonts.poppins(
                            color: Colors.deepPurple,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Text(
                            "I\'m a student pursuing my undergrad in a reputated University at Chennai,Tamilnadu,India ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Image.asset(
                        "assets/character-029.png",
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 6.0,
                  color: Colors.black54,
                  height: 50.0,
                  indent: 60.0,
                  endIndent: 60.0,
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  height: 350.0,
                  width: 250.0,
                  // padding: const EdgeInsets.only(top: 300.0, left: 5.0, bottom: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        offset: Offset(5, 5),
                        blurRadius: 6.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Social Media",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                      Social(
                        image:
                            "https://image.flaticon.com/icons/png/512/174/174855.png",
                        title: "@_i_aakash",
                      ),
                      Social(
                        image:
                            "https://cdn.iconscout.com/icon/free/png-256/facebook-logo-2019-1597680-1350125.png",
                        title: "Aakash Suresh",
                      ),
                      Social(
                        image:
                            "https://www.iconpacks.net/icons/2/free-twitter-logo-icon-2429-thumb.png",
                        title: "aakashsuresh62",
                      ),
                      Social(
                        image:
                            "https://image.flaticon.com/icons/png/512/25/25231.png",
                        title: "xi_aakash",
                      )
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 6.0,
              color: Colors.black54,
              height: 50.0,
              indent: 60.0,
              endIndent: 60.0,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 20.0),
              width: 250.0,
              // padding: const EdgeInsets.only(top: 300.0, left: 5.0, bottom: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    offset: Offset(5, 5),
                    blurRadius: 6.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Skills",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Social(
                    image:
                        "https://cdn.iconscout.com/icon/free/png-512/flutter-2038877-1720090.png",
                    title: "Flutter",
                  ),
                  Social(
                    image:
                        "https://cdn3.iconfinder.com/data/icons/logos-and-brands-adobe/512/267_Python-512.png",
                    title: "Python",
                  ),
                  Social(
                    image:
                        "https://upload.wikimedia.org/wikipedia/commons/d/d5/Hey_Machine_Learning_Logo.png",
                    title: "Machine Learning",
                  ),
                  Social(
                    image:
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/HTML5_logo_and_wordmark.svg/512px-HTML5_logo_and_wordmark.svg.png",
                    title: "HTML",
                  ),
                  Social(
                    image:
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/CSS3_logo_and_wordmark.svg/425px-CSS3_logo_and_wordmark.svg.png",
                    title: "CSS",
                  ),
                  Social(
                      image:
                          "https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/21_Angular_logo_logos-512.png",
                      title: "Angular")
                ],
              ),
            ),
            Divider(
              thickness: 6.0,
              color: Colors.black54,
              height: 50.0,
              indent: 60.0,
              endIndent: 60.0,
            ),
          ],
        ),
      ),
    );
  }
}

class Social extends StatelessWidget {
  final String image;
  final String title;

  const Social({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            width: double.infinity,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  offset: Offset(5, 5),
                  blurRadius: 6.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: ListTile(
              leading: Image.network(
                image,
                height: 30.0,
              ),
              title: Text(
                title,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
