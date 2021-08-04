


import 'package:run_tracker/common/multiselectdialog/MultiSelectDialog.dart';
import 'package:run_tracker/utils/Debug.dart';

class Constant {
  static const STR_BACK = "Back";
  static const STR_STOP = "STOP";
  static const STR_RESUME = "RESUME";
  static const STR_DELETE = "DELETE";
  static const STR_SETTING = "Setting";
  static const STR_SETTING_CIRCLE = "Setting_circle";
  static const STR_CLOSE = "CLOSE";
  static const STR_INFO = "INFO";
  static const STR_OPTIONS = "OPTIONS";

  static const STR_RESET = "Reset";
  static const STR_EDIT_TARGET = "Edit target";
  static const STR_TURNOFF = "Turn off";

  static const ML_100 = 100;
  static const ML_150 = 150;
  static const ML_250 = 250;
  static const ML_500 = 500;

  static const MIN_KG = 20.00;
  static const MAX_KG = 997.00;

  static const MIN_LBS = 45.00;
  static const MAX_LBS = 2200.00;

  static List<MultiSelectDialogItem> daysList = [
    MultiSelectDialogItem("1", "Monday"),
    MultiSelectDialogItem("2", "Tuesday"),
    MultiSelectDialogItem("3", "Wednesday"),
    MultiSelectDialogItem("4", "Thursday"),
    MultiSelectDialogItem("5", "Friday"),
    MultiSelectDialogItem("6", "Saturday"),
    MultiSelectDialogItem("7", "Sunday"),
  ];

  static const String EMAIL_PATH = 'vivek@benzatine.com';
}
