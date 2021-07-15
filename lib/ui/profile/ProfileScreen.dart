import 'package:flutter/material.dart';
import 'package:run_tracker/common/bottombar/BottomBar.dart';
import 'package:run_tracker/custom/GradientButtonSmall.dart';

import '../../localization/language/languages.dart';
import '../../utils/Color.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colur.common_bg_dark,
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    _runTrackerWidget(context),
                    _progressWidget(context),
                    _bestRecordWidget(context),
                    _fastestTimeWidget(context),
                  ],
                ),
              ),
            ),
            BottomBar(isHome: false,isProfile: true,),
          ],
        ),
      ),
    );
  }

  _runTrackerWidget(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colur.rounded_rectangle_color,
      padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
      child: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            Languages.of(context).txtRunTracker,
                            textAlign: TextAlign.left,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colur.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 25),
                            //maxLines: 1,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10.0),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colur.grad_yellow_light,
                                      Colur.grad_yellow_dark
                                    ]),
                                borderRadius: BorderRadius.circular(3.0)),
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.5, horizontal: 5.0),
                            child: Text(
                              Languages.of(context).txtPro.toUpperCase(),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colur.txt_black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12),
                              //maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5.0),
                        child: Text(
                          Languages.of(context).txtGoFasterSmarter,
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colur.txt_grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                          //maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                      color: Colur.gray_border,
                      width: 1,
                    ),
                  ),
                  child: Image.asset(
                    "assets/icons/ic_setting_round.png",
                    scale: 4,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset(
                    "assets/icons/ic_round_true.webp",
                    scale: 4.2,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      Languages.of(context).txtRemoveAddForever,
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colur.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                      //maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset(
                    "assets/icons/ic_round_true.webp",
                    scale: 4.2,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      Languages.of(context).txtUnlockAllTrainingPlans,
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colur.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                      //maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset(
                    "assets/icons/ic_round_true.webp",
                    scale: 4.2,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      Languages.of(context).txtDeeperAnalysis,
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colur.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                      //maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30.0),
              child: GradientButtonSmall(
                width: double.infinity,
                height: 50.0,
                radius: 50.0,
                child: Text(
                  Languages.of(context).txtStart.toUpperCase(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colur.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colur.purple_gradient_color1,
                    Colur.purple_gradient_color2,
                  ],
                ),
                isShadow: false,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  _progressWidget(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
      margin: const EdgeInsets.only(top: 8.0),
      width: double.infinity,
      color: Colur.rounded_rectangle_color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  Languages.of(context).txtMyProgress,
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colur.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                  //maxLines: 1,
                ),
              ),
              Text(
                Languages.of(context).txtMore.toUpperCase(),
                textAlign: TextAlign.left,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colur.txt_purple,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
                //maxLines: 1,
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 15.0),
            child: Text(
              "0.00",
              textAlign: TextAlign.left,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colur.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 50.0),
              //maxLines: 1,
            ),
          ),
          Text(
            Languages.of(context).txtTotalKM.toUpperCase(),
            textAlign: TextAlign.left,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colur.white, fontWeight: FontWeight.w500, fontSize: 14),
            //maxLines: 1,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        "0.01",
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colur.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 40.0),
                        //maxLines: 1,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Text(
                        Languages.of(context).txtTotalHours.toUpperCase(),
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colur.txt_grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                        //maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        "4.9",
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colur.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 40.0),
                        //maxLines: 1,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Text(
                        Languages.of(context).txtTotalKCAL.toUpperCase(),
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colur.txt_grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                        //maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        "0:00",
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colur.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 40.0),
                        //maxLines: 1,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Text(
                        Languages.of(context).txtAvgPace.toUpperCase(),
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colur.txt_grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                        //maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _bestRecordWidget(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
      margin: const EdgeInsets.only(top: 8.0),
      width: double.infinity,
      color: Colur.rounded_rectangle_color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Languages.of(context).txtBestRecords,
            textAlign: TextAlign.left,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colur.white, fontWeight: FontWeight.w700, fontSize: 18),
            //maxLines: 1,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colur.common_bg_dark,
                borderRadius: BorderRadius.circular(10.0)),
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            margin: const EdgeInsets.only(top: 30.0),
            child: Row(
              children: [
                Image.asset(
                  "assets/icons/ic_distance_light.webp",
                  scale: 3.5,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Languages.of(context).txtLongestDistance,
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colur.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 2.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "0",
                                textAlign: TextAlign.left,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colur.txt_purple,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22),
                                //maxLines: 1,
                              ),
                              Expanded(
                                child: Container(
                                  padding:
                                      EdgeInsets.only(left: 5.0, bottom: 3.0),
                                  child: Text(
                                    Languages.of(context).txtMILE.toLowerCase(),
                                    textAlign: TextAlign.left,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colur.txt_purple,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                    //maxLines: 1,
                                  ),
                                ),
                              ),
                              Container(
                                padding:
                                    EdgeInsets.only(left: 5.0, bottom: 3.0),
                                child: Text(
                                  "Jul 3 09:24",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colur.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13),
                                  //maxLines: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colur.common_bg_dark,
                borderRadius: BorderRadius.circular(10.0)),
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            margin: const EdgeInsets.only(top: 20.0),
            child: Row(
              children: [
                Image.asset(
                  "assets/icons/ic_best_pace_light.webp",
                  scale: 3.5,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Languages.of(context).txtBestPace,
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colur.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 2.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "0",
                                textAlign: TextAlign.left,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colur.txt_purple,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22),
                                //maxLines: 1,
                              ),
                              Container(
                                padding:
                                    EdgeInsets.only(left: 5.0, bottom: 3.0),
                                child: Text(
                                  Languages.of(context).txtMinMi.toLowerCase(),
                                  textAlign: TextAlign.left,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colur.txt_purple,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                  //maxLines: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colur.common_bg_dark,
                borderRadius: BorderRadius.circular(10.0)),
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
            child: Row(
              children: [
                Image.asset(
                  "assets/icons/ic_duration_light.webp",
                  scale: 3.5,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Languages.of(context).txtLongestDuration,
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colur.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 2.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Text(
                                  "00.00",
                                  textAlign: TextAlign.left,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colur.txt_purple,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22),
                                  //maxLines: 1,
                                ),
                              ),
                              Container(
                                padding:
                                    EdgeInsets.only(left: 5.0, bottom: 3.0),
                                child: Text(
                                  "Jul 3 09:24",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colur.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13),
                                  //maxLines: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _fastestTimeWidget(BuildContext context) {
    return Container();
  }
}
