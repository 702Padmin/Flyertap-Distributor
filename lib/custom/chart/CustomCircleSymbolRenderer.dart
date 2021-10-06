import 'dart:math';

import 'package:charts_flutter/flutter.dart';
import 'package:charts_flutter/src/text_style.dart' as style2;

class CustomCircleSymbolRenderer extends CircleSymbolRenderer {
  static String? value;

  @override
  void paint(ChartCanvas canvas, Rectangle<num> bounds,
      {List<int>? dashPattern,
      Color? fillColor,
      FillPatternType? fillPattern,
      Color? strokeColor,
      double? strokeWidthPx}) {
    super.paint(canvas, bounds,
        dashPattern: dashPattern,
        fillColor: fillColor,
        fillPattern: fillPattern,
        strokeColor: strokeColor,
        strokeWidthPx: strokeWidthPx);

    canvas.drawRRect(
      Rectangle(bounds.left-8, bounds.top - 30, bounds.width + 30,
          bounds.height + 10),
      fill: Color.white,
      radius: 10,
      roundTopLeft: true,
      roundTopRight: true,
      roundBottomLeft: true,
      roundBottomRight: true,
    );
    var textStyle = style2.TextStyle();
    textStyle.color = Color.black;
    textStyle.fontSize = 15;

    TextElement textElement =
        canvas.graphicsFactory.createTextElement("$value");
    textElement.textStyle = textStyle;

    canvas.drawText(
        textElement, (bounds.left+5).round(), (bounds.top - 24).round());
  }
}
