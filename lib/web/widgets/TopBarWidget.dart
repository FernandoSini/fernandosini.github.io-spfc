import 'package:flutter/material.dart';
import 'package:spfc/web/widgets/Responsive.dart';

class TopBarWidget extends StatefulWidget {
  final double opacity;
  TopBarWidget(this.opacity);

  @override
  _TopBarWidgetState createState() => _TopBarWidgetState();
}

bool onHover = false;
bool onHover2 = false;
bool onHover3 = false;
bool onHover4 = false;
bool onHover5 = false;
bool onHover6 = false;
bool onHover7 = false;

class _TopBarWidgetState extends State<TopBarWidget> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(screenSize.width, 3000),
      child: Container(
        color: Colors.redAccent.shade700.withOpacity(widget.opacity),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (Responsive.isSmallScreen(context))
                      SizedBox(
                        width: screenSize.width * 0.02,
                      )
                    else if (Responsive.isMediumScreen(context))
                      SizedBox(
                        width: screenSize.width * 0.02,
                      )
                    else
                      SizedBox(
                        width: screenSize.width * 0.18,
                      ),
                    InkWell(
                      onTap: () {
                        print(onHover);
                      },
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
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: screenSize.width * 0.02,
                          ),
                          InkWell(
                            onTap: () {},
                            onHover: (value) {
                              setState(() {
                                onHover = value;
                              });
                            },
                            // hoverColor: Colors.blue,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.info_outline,
                                      size: 20,
                                      color: onHover
                                          ? Colors.yellow
                                          : Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "O clube",
                                      style: TextStyle(
                                        color: onHover
                                            ? Colors.yellow
                                            : Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: screenSize.width * 0.02,
                          ),
                          InkWell(
                            onTap: () {},
                            onHover: (value2) {
                              setState(() {
                                onHover2 = value2;
                              });
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.groups,
                                      color: onHover2
                                          ? Colors.yellow
                                          : Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Equipe",
                                      style: TextStyle(
                                          color: onHover2
                                              ? Colors.yellow
                                              : Colors.white),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: screenSize.width * 0.02,
                          ),
                          InkWell(
                            onTap: () {},
                            onHover: (value3) {
                              setState(() {
                                onHover3 = value3;
                              });
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.smart_display_rounded,
                                      color: onHover3
                                          ? Colors.yellow
                                          : Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "SPFCtv",
                                      style: TextStyle(
                                          color: onHover3
                                              ? Colors.yellow
                                              : Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: screenSize.width * 0.02,
                          ),
                          InkWell(
                            onTap: () {},
                            onHover: (value4) {
                              setState(() {
                                onHover4 = value4;
                              });
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.local_activity,
                                      color: onHover4
                                          ? Colors.yellow
                                          : Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Ingressos",
                                      style: TextStyle(
                                        color: onHover4
                                            ? Colors.yellow
                                            : Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: screenSize.width * 0.02,
                          ),
                          InkWell(
                            onTap: () {},
                            onHover: (value5) {
                              setState(() {
                                onHover5 = value5;
                              });
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.attach_money_rounded,
                                      color: onHover5
                                          ? Colors.yellow
                                          : Colors.white,
                                    ),
                                    Text(
                                      "Sócio Torcedor",
                                      style: TextStyle(
                                        color: onHover5
                                            ? Colors.yellow
                                            : Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: screenSize.width * 0.02,
                          ),
                          InkWell(
                            onTap: () {},
                            onHover: (value6) {
                              setState(() {
                                onHover6 = value6;
                              });
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.fitness_center_outlined,
                                      size: 20,
                                      color: onHover6
                                          ? Colors.yellow
                                          : Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Estruturas",
                                      style: TextStyle(
                                        color: onHover6
                                            ? Colors.yellow
                                            : Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: screenSize.width * 0.02,
                          ),
                          InkWell(
                            onTap: () {},
                            onHover: (value7) {
                              setState(() {
                                onHover7 = value7;
                              });
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.sports_soccer_outlined,
                                      color: onHover7
                                          ? Colors.yellow
                                          : Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Jogos",
                                      style: TextStyle(
                                        color: onHover7
                                            ? Colors.yellow
                                            : Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
