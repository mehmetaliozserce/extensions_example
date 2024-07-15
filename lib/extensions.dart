import 'dart:math';
import 'package:flutter/material.dart';

extension PaddingExtension on Widget {
  // TR: Widget'ın her köşesinden padding ekler.
  // EN: Adds uniform padding around the widget.
  Widget padAll(double value) => 
    Padding(padding: EdgeInsets.all(value), child: this);

  // TR: Widget'a yatay-dikey padding ekler.
  // EN: Adds symmetric vertical and horizontal padding to the widget.
  Widget padSymmetric({double vertical = 0.0, double horizontal = 0.0}) => 
    Padding(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this
    );
}

extension VisibilityExtension on Widget {
  // TR: Widget'ı isVisible değerine göre gösterir.
  // EN: Conditionally display the widget based on the isVisible flag.
  Widget visible(bool isVisible) => isVisible ? this : const SizedBox.shrink();
}

extension MarginExtension on Widget {
  // TR: Widget'a margin ekler.
  // EN: Adds uniform margin around the widget.
  Widget marginAll(double value) => 
    Container(margin: EdgeInsets.all(value), child: this);

  // TR: Widget'a yatay-dikey olarak margin ekler.
  // EN: Adds symmetric vertical and horizontal margins to the widget.
  Widget marginSymmetric({double vertical = 0.0, double horizontal = 0.0}) => 
    Container(
      margin: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this
    );
}

extension RotationExtension on Widget {
  // TR: Widget'ı belirtilen derece kadar döndürür.
  // EN: Rotates the widget by a specified number of degrees.
  Widget rotate(double degrees) => 
    Transform.rotate(angle: degrees * pi / 180, child: this);
}

extension ScaleExtension on Widget {
  // TR: Widget'ı belirtilen faktör kadar ölçeklendirir.
  // EN: Scales the widget by a specified factor.
  Widget scale(double scale) => 
    Transform.scale(scale: scale, child: this);
}

extension BorderExtension on Widget {
  // TR: Widget'a özelleştirilebilir renk ve genişlikte bir kenarlık ekler.
  // EN: Adds a border to the widget with customizable color and width.
  Widget withBorder({Color color = Colors.black, double width = 1.0}) => 
    Container(
      decoration: BoxDecoration(
        border: Border.all(color: color, width: width),
      ),
      child: this,
    );
}

extension ShadowExtension on Widget {
  // TR: Widget'a gölge ekler.
  // EN: Applies a shadow to the widget.
  Widget withShadow({Color color = Colors.black, double blurRadius = 10.0, Offset offset = const Offset(2, 2)}) => 
    Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: color,
            blurRadius: blurRadius,
            offset: offset,
          ),
        ],
      ),
      child: this,
    );
}

extension BackgroundColorExtension on Widget {
  // TR: Widget'ın arka plan rengini değiştirir.
  // EN: Changes the background color of the widget.
  Widget withBackgroundColor(Color color) => 
    Container(
      color: color,
      child: this,
    );
}
