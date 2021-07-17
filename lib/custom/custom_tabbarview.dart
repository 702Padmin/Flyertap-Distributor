import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  final String tab1;
  final String tab2;
  final Widget forHeart;
  final Widget forDistance;

  const CustomTabBar({
    Key? key,
    required this.tab1,
    required this.tab2,
    required this.forHeart,
    required this.forDistance,
  }):super(key: key);
  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  Gradient grad = LinearGradient(colors: [Color(0XFF8A3CFF), Color(0XFFC040FF)]);
  bool heartSelected = true;
  bool distanceSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    heartSelected = true;
                    distanceSelected = false;
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width/2,
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            widget.tab1,
                            style: TextStyle(
                                color: heartSelected ? Colors.white : Color(0xFF9195B6),
                                fontSize: heartSelected ? 20 : 16.0,
                                fontWeight: heartSelected ? FontWeight.bold : FontWeight.w500
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: heartSelected,
                        child: Container(
                          height: 3,
                          width: 30,
                          decoration: BoxDecoration(
                              gradient: grad,
                              borderRadius: BorderRadius.circular(2)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    heartSelected = false;
                    distanceSelected = true;
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width/2,
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            widget.tab2,
                            style: TextStyle(
                                color: distanceSelected ? Colors.white : Color(0xFF9195B6),
                                fontSize: distanceSelected ? 20 : 16.0,
                                fontWeight: distanceSelected ? FontWeight.bold : FontWeight.w500
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: distanceSelected,
                        child: Container(
                          height: 3,
                          width: 30,
                          decoration: BoxDecoration(
                              gradient: grad,
                              borderRadius: BorderRadius.circular(2)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(child: distanceSelected ? widget.forDistance : widget.forHeart,),
      ],
    );
  }
}