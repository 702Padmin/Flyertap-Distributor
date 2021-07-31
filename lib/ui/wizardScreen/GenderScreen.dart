import 'package:flutter/material.dart';
import 'package:run_tracker/custom/GradientButtonSmall.dart';
import 'package:run_tracker/localization/language/languages.dart';
import 'package:run_tracker/ui/wizardScreen/WizardScreen.dart';
import 'package:run_tracker/utils/Color.dart';
import 'package:run_tracker/utils/Debug.dart';
import 'package:run_tracker/utils/Preference.dart';
import 'package:run_tracker/utils/Utils.dart';

enum Gender { Male, Female }

class GenderScreen extends StatefulWidget {
  PageController? pageController;
  Function? updatevalue;
  bool? isBack;
  Function? pageNum;

  WizardScreenState wizardScreenState;
  String? gender;
  Function onGender;


  GenderScreen({this.pageController,this.updatevalue,this.isBack,this.pageNum,required this.gender,required this.onGender, required this.wizardScreenState}){
    isBack = false;

  }

  @override
  _GenderScreenState createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  Gender? gender = Gender.Male;

  @override
  void initState() {
    getGender();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    var fullHeight =  MediaQuery.of(context).size.height;
    var fullWidth =  MediaQuery.of(context).size.width;
    return Container(
      height:fullHeight,
      width: fullWidth,
      color: Colur.common_bg_dark,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          //What is Your Gender Text
          Container(
            margin: EdgeInsets.only(top: fullHeight*0.05),
            child: Text(
              Languages
                  .of(context)!
                  .txtWhatIsYourGender,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colur.txt_white,
                  fontSize: 30),
            ),
          ),
          //Gender Description
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              Languages
                  .of(context)!
                  .txtGenderDescription,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colur.txt_grey,
                fontSize: 20,
              ),
            ),
          ),
          //Male Button===========================
          _maleContanier(fullHeight),
          _femaleContainer(fullHeight),
          //Next Step Button


          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: fullWidth*0.15, bottom: fullHeight*0.08, right: fullWidth*0.15),
              alignment: Alignment.bottomCenter,

              child: GradientButtonSmall(
                width: double.infinity,
                height: 60,
                radius: 50.0,
                child: Text(
                  Languages
                      .of(context)!
                      .txtNextStep,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colur.white,
                      fontWeight: FontWeight.w500,
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
                onPressed: () async {
                  setState(() {
                    widget.onGender(gender.toString());
                    widget.updatevalue!(0.66);
                    widget.pageNum!(2);
                  });
                  widget.pageController!.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );

                },
              ),
            ),
          ),

        ],
      ),
    );
  }

  _maleContanier(double fullHeight) {
    return InkWell(
      onTap: () {
        setState(() {
          gender = Gender.Male;
         /* Debug.printLog("Male Selected");
          Utils.showToast(context, "Male");*/
        });
      },
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colur.rounded_rectangle_color,
            ),
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colur.rounded_rectangle_color),
        margin: EdgeInsets.only(top: fullHeight*0.1, left: 60, right: 60),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Image.asset(
                'assets/icons/ic_male.png',
                width: 40,
                height: 40,
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  Languages.of(context)!.txtMale,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 21,
                      color: Colur.txt_white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 30),
              child: Radio(
                fillColor: MaterialStateColor.resolveWith((states) =>
                Colur.white),
                value: Gender.Male,
                groupValue: gender,
                onChanged: (Gender? value) {
                  setState(() {
                    gender = value;
                    /*Debug.printLog(
                        "Male Selected From Radio" + gender.toString());*/
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  _femaleContainer([double? fullHeight]) {
    return InkWell(
      onTap: () {
        setState(() {
          gender = Gender.Female;
          /*Debug.printLog("Female Selected");
          Utils.showToast(context, "Female");*/
        });
      },
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colur.rounded_rectangle_color,
            ),
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colur.rounded_rectangle_color),
        margin: EdgeInsets.only(top: 15, left: 60, right: 60, bottom: 20),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Image.asset(
                'assets/icons/ic_female.png',
                width: 40,
                height: 40,
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  Languages.of(context)!.txtFemale,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 21,
                      color: Colur.txt_white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 30),
              child: Radio(
                fillColor: MaterialStateColor.resolveWith((states) =>
                Colur.white),
                value: Gender.Female,
                groupValue: gender,
                onChanged: (Gender? value) {
                  setState(() {
                    gender = value;
                    /*Debug.printLog("Female Selected From Radio" +
                        gender.toString());*/
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  getGender() {
    String? gen = Preference.shared.getString(Preference.GENDER);
    //Debug.printLog("Gender from prefs: $gen");
  }


}