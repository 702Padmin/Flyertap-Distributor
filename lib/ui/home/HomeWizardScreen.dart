import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:run_tracker/common/bottombar/BottomBar.dart';
import 'package:run_tracker/ui/home/HomeScreen.dart';
import 'package:run_tracker/ui/profile/ProfileScreen.dart';
import 'package:run_tracker/ui/startRun/StartRunScreen.dart';
import 'package:run_tracker/ui/useLocation/UseLocationScreen.dart';
import 'package:run_tracker/utils/Color.dart';
import 'package:run_tracker/utils/Debug.dart';
import 'package:run_tracker/utils/Preference.dart';
import 'package:run_tracker/utils/Utils.dart';

class HomeWizardScreen extends StatefulWidget {
  const HomeWizardScreen({Key? key}) : super(key: key);

  @override
  _HomeWizardScreenState createState() => _HomeWizardScreenState();
}

class _HomeWizardScreenState extends State<HomeWizardScreen> {
  PageController _myPage = PageController(initialPage: 0);
  int? num;
  Location _location = Location();

  @override
  void initState() {
    Preference.shared.remove(Preference.IS_PAUSE);
    super.initState();
    num = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colur.rounded_rectangle_color,
      bottomNavigationBar: BottomAppBar(

        color: Colur.rounded_rectangle_color,
        child: SafeArea(
          bottom: false,
          child: Container(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        num = 0;
                        _myPage.jumpToPage(0);
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Image.asset(
                        (num == 0)
                            ? "assets/icons/ic_selected_home_bottombar.webp"
                            : "assets/icons/ic_unselected_home_bottombar.webp",
                        scale: 3.5,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        num = 1;
                        _myPage.jumpToPage(1);
                      });

                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Image.asset(
                        (num == 1)
                            ? "assets/icons/ic_selected_profile_bottombar.webp"
                            : "assets/icons/ic_unselected_profile_bottombar.webp",
                        scale: 3.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: (){


          _permissionCheck();


        },
        child: Container(
          height: 75,
          width: 75,
          child: Image.asset(
            "assets/icons/ic_person_bottombar.webp",
            height: 45,
            width: 45,
            //fit: BoxFit.cover,
          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colur.common_bg_dark,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 9,
              child: new PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: _myPage,
                onPageChanged: (pos) {
                  if(pos == 0){
                    setState(() {
                      num = 0;
                    });
                  }
                  else if(pos == 1){
                    setState(() {
                      num = 1;
                    });
                  }
                  else{
                    setState(() {
                      num= 0;
                    });
                  }
                  Debug.printLog("Page changed to: $pos");
                },
                children: <Widget>[
                  HomeScreen(),
                  ProfileScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _permissionCheck() async {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await _location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await _location.requestService();
      if (!_serviceEnabled) {
        Utils.showToast(context, "not enabled Service");
        return;
      }
    }

    _permissionGranted = await _location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await _location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UseLocationScreen()));
        return;
      }
    }
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => StartRunScreen()));

  }
//Extra MEthod Which we have to REMOVE
  _BottomBar() {
    return Container(
      child: Stack(
        alignment: new FractionalOffset(.5, -8.0),
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: 80.0,
            color: Colur.green_For_NotReally,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        num = 1;
                      });
                    },
                    child: Container(
                      color: Colors.lightBlue,
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Image.asset(
                        (num == 1)
                            ? "assets/icons/ic_selected_home_bottombar.webp"
                            : "assets/icons/ic_unselected_home_bottombar.webp",
                        scale: 3.5,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        num = 2;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 30.0),
                      color: Colors.grey,
                      child: Image.asset(
                        (num == 2)
                            ? "assets/icons/ic_selected_profile_bottombar.webp"
                            : "assets/icons/ic_unselected_profile_bottombar.webp",
                        scale: 3.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Utils.showToast(context, "mapClicked");
            },
            child: Container(
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/icons/ic_person_bottombar.webp",
                scale: 3.8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
