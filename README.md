Tabii, işte İngilizce README dosyasının içeriği `README.md` olarak oluşturmak için:

```markdown
# Flutter Extensions Demo 🚀

## English

Welcome to the Flutter Extensions Demo! This project showcases a set of custom Dart extensions designed to supercharge your Flutter UI development. These extensions help streamline your code, making your Flutter widgets more flexible and your development process more efficient.

### Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Installation](#installation)
  - [Usage](#usage)
- [Extensions](#extensions)
  - [PaddingExtension](#paddingextension)
  - [VisibilityExtension](#visibilityextension)
  - [MarginExtension](#marginextension)
  - [RotationExtension](#rotationextension)
  - [ScaleExtension](#scaleextension)
  - [BorderExtension](#borderextension)
  - [ShadowExtension](#shadowextension)
  - [BackgroundColorExtension](#backgroundcolorextension)
- [Contributing](#contributing)
- [License](#license)

### Introduction

Flutter Extensions Demo demonstrates how to use Dart extensions to enhance Flutter widgets. These extensions allow you to inject new functionality into existing classes without modifying their original source code, promoting cleaner and more maintainable code.

### Features

- **Padding Extensions** 📏 - Easily add padding to your widgets.
- **Margin Extensions** 📐 - Set margins with simplicity and flexibility.
- **Visibility Extensions** 👁️ - Conditionally display widgets.
- **Rotation Extensions** 🔄 - Rotate widgets effortlessly.
- **Scale Extensions** 🔍 - Scale widgets precisely.
- **Border Extensions** 🖼️ - Add customizable borders to widgets.
- **Shadow Extensions** 🌟 - Apply shadows to widgets.
- **Background Color Extensions** 🎨 - Change the background color of widgets.

### Getting Started

#### Installation

To get started, clone this repository:

```sh
git clone https://github.com/mehmetaliozserce/extensions_example
```

Navigate to the project directory:

```sh
cd extensions_example
```

Install the dependencies:

```sh
flutter pub get
```

#### Usage

Run the app:

```sh
flutter run
```

### Extensions

#### PaddingExtension

Add uniform or symmetric padding to your widgets.

```dart
extension PaddingExtension on Widget {
  Widget padAll(double value) => 
    Padding(padding: EdgeInsets.all(value), child: this);

  Widget padSymmetric({double vertical = 0.0, double horizontal = 0.0}) => 
    Padding(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this
    );
}
```

#### VisibilityExtension

Conditionally display widgets based on a boolean flag.

```dart
extension VisibilityExtension on Widget {
  Widget visible(bool isVisible) => isVisible ? this : const SizedBox.shrink();
}
```

#### MarginExtension

Add uniform or symmetric margin to your widgets.

```dart
extension MarginExtension on Widget {
  Widget marginAll(double value) => 
    Container(margin: EdgeInsets.all(value), child: this);

  Widget marginSymmetric({double vertical = 0.0, double horizontal = 0.0}) => 
    Container(
      margin: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this
    );
}
```

#### RotationExtension

Rotate your widgets by a specified number of degrees.

```dart
extension RotationExtension on Widget {
  Widget rotate(double degrees) => 
    Transform.rotate(angle: degrees * pi / 180, child: this);
}
```

#### ScaleExtension

Scale your widgets by a specified factor.

```dart
extension ScaleExtension on Widget {
  Widget scale(double scale) => 
    Transform.scale(scale: scale, child: this);
}
```

#### BorderExtension

Add customizable borders to your widgets.

```dart
extension BorderExtension on Widget {
  Widget withBorder({Color color = Colors.black, double width = 1.0}) => 
    Container(
      decoration: BoxDecoration(
        border: Border.all(color: color, width: width),
      ),
      child: this,
    );
}
```

#### ShadowExtension

Apply shadows to your widgets.

```dart
extension ShadowExtension on Widget {
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
```

#### BackgroundColorExtension

Change the background color of your widgets.

```dart
extension BackgroundColorExtension on Widget {
  Widget withBackgroundColor(Color color) => 
    Container(
      color: color,
      child: this,
    );
}
```
