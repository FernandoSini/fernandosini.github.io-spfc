import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:spfc/web/widgets/Footer.dart';
import 'package:spfc/web/widgets/FooterTextWidget.dart';
import 'package:spfc/web/widgets/Responsive.dart';
import 'package:spfc/web/widgets/TopBarWidget.dart';

class WebHomeScreen extends StatefulWidget {
  const WebHomeScreen({Key? key}) : super(key: key);

  @override
  _WebHomeScreenState createState() => _WebHomeScreenState();
}

class _WebHomeScreenState extends State<WebHomeScreen> {
  final ScrollController? _scrollController = ScrollController();
  double _opacity = 0;
  double _scrollPosition = 0;
  bool isHovering = false;
  final ScrollController? controller = ScrollController();

  scrollListener() {
    setState(() {
      _scrollPosition = _scrollController!.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController!.addListener(scrollListener);
    super.initState();
  }

  List<String> images = [
    "./assets/morumbilotado.jpeg",
    "./assets/morumbi.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    _animateToIndex(i) => controller?.animateTo(screenSize.width * i,
        duration: Duration(seconds: 2), curve: Curves.ease);

    return Scaffold(
      // extendBody: true,
      // extendBodyBehindAppBar: true,
      appBar: Responsive.isSmallScreen(context)
          ? AppBar(
              backgroundColor: Colors.redAccent.shade700.withOpacity(1),
              centerTitle: true,
              title: InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("./assets/spfclogo.png"),
                        fit: BoxFit.contain),
                  ),
                ),
              ),
              leading: InkWell(
                child: Icon(
                  Icons.menu,
                  color: isHovering ? Colors.yellow : Colors.white,
                ),
                onTap: () {
                  print(isHovering);
                },
                onHover: (value) {
                  setState(() {
                    isHovering = value;
                  });
                },
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: TopBarWidget(1),
            ),
      body: Container(
        child: SingleChildScrollView(
          clipBehavior: Clip.none,
          controller: _scrollController,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                child: Container(
                  clipBehavior: Clip.none,
                  height: screenSize.height * 0.5,
                  margin: EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                    left: 10,
                    right: 10,
                  ),
                  width: screenSize.width,
                  child: ListView.builder(
                    controller: controller,
                    itemCount: images.length,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.only(left: 10),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Container(
                      clipBehavior: Clip.none,
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      height: screenSize.height * 0.5,
                      width: screenSize.width * 0.95,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: Colors.redAccent.shade700, width: 3),
                        image: DecorationImage(
                          image: AssetImage(images[index]),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.keyboard_arrow_left,
                                size: 50,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                if (index > 0) {
                                  setState(() {
                                    index--;
                                    _animateToIndex(index);
                                  });
                                } else {
                                  print('nada');
                                }
                              },
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 25),
                              child: IconButton(
                                icon: Icon(
                                  Icons.keyboard_arrow_right,
                                  size: 50,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  if (index <= images.length) {
                                    setState(() {
                                      print(index);
                                      index++;
                                      _animateToIndex(index);
                                    });
                                  } else {
                                    print("nadinha");
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Container(
              //   height: screenSize.height * 1,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //         image: AssetImage("./assets/morumbi.jpeg"),
              //         fit: BoxFit.cover),
              //   ),
              // ),
              Container(
                child: Row(
                  children: [
                    MouseRegion(
                      // height: screenSize.height * 0.5,
                      // hoverForegroundDecoration: BoxDecoration(
                      //   color: Colors.redAccent.shade700.withOpacity(0.5),
                      // ),
                      cursor: SystemMouseCursors.click,
                      onEnter: (event) {
                        setState(() {
                          isHovering = true;
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          isHovering = false;
                        });
                      },
                      child: Container(
                        // margin: EdgeInsets.only(left: 10),
                        // color: Colors.red,
                        height: screenSize.height * 0.5,
                        width: screenSize.width * 0.5,
                        foregroundDecoration: isHovering
                            ? BoxDecoration(
                                color:
                                    Colors.redAccent.shade700.withOpacity(0.4),
                              )
                            : null,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("./assets/lucigol.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              child: Text(
                                "De volta! Luciano voltou!",
                                softWrap: true,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                        offset: Offset(0, 2),
                                        color: Colors.black)
                                  ],
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: screenSize.height * 0.5,
                      width: screenSize.width * 0.5,
                      color: Colors.black,
                      child: Column(
                        children: [
                          Text(
                            "text2",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: screenSize.height * 0.3,
              ),

              Footer(
                footerTextWidget: FooterTextWidget("Maconha", 25, Colors.white),
                width: screenSize.width,
                height: screenSize.height * 0.3,
                color: Colors.redAccent.shade700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
