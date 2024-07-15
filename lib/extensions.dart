import 'dart:math';
import 'package:flutter/material.dart';


extension PaddingExtension on Widget {
 //widget'ın her köşesinden padding ekler
  Widget padAll(double value) => 
    Padding(padding: EdgeInsets.all(value), child: this);

  // Widget'a yatay-dikey padding ekler.
  Widget padSymmetric({double vertical = 0.0, double horizontal = 0.0}) => 
    Padding(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this
    );
}

extension VisibilityExtension on Widget {
  // Widget'ı isVisible değerine göre gösterir.
  Widget visible(bool isVisible) => isVisible ? this : const SizedBox.shrink();
}

extension MarginExtension on Widget {
  // Widget'a margin ekler.
  Widget marginAll(double value) => 
    Container(margin: EdgeInsets.all(value), child: this);

  // Widget'a  yatay-dikey olarak margin ekler.
  Widget marginSymmetric({double vertical = 0.0, double horizontal = 0.0}) => 
    Container(
      margin: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this
    );
}

extension RotationExtension on Widget {
  // Widget'ı belirtilen derece kadar döndürür.
  Widget rotate(double degrees) => 
    Transform.rotate(angle: degrees * pi / 180, child: this);
}

extension ScaleExtension on Widget {
  // Widget'ı belirtilen faktör kadar ölçeklendirir.
  Widget scale(double scale) => 
    Transform.scale(scale: scale, child: this);
}

extension BorderExtension on Widget {
  // Widget'a özelleştirilebilir renk ve genişlikte bir kenarlık ekler.
  Widget withBorder({Color color = Colors.black, double width = 1.0}) => 
    Container(
      decoration: BoxDecoration(
        border: Border.all(color: color, width: width),
      ),
      child: this,
    );
}

extension ShadowExtension on Widget {
  // Widget'a gölge ekler.
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
  // Widget'ın arka plan rengini değiştirir.
  Widget withBackgroundColor(Color color) => 
    Container(
      color: color,
      child: this,
    );
}
