# hondooye_sizer

A Useful Sizer for Flutter applications that provides responsive sizing utilities.

## Version

Current version: **1.0.0**

Compatible with:
- Flutter 3.35.7+
- Dart 3.4.0+

## Getting Started

### Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  hondooye_sizer: ^1.0.0
```

### Usage

```dart
import 'package:hondooye_sizer/hondooye_sizer.dart';

// Initialize Sizer
Sizer.init(standardLogicalWidth: 420, standardLogicalHeight: 920);

// Use static Sizer
double width = Sizer.unitWidth.lp16;
double height = Sizer.unitHeight.lp24;

// Use ResponsiveSizer in widgets
ResponsiveSizer responsiveSizer = ResponsiveSizer(context: context);
double responsiveWidth = responsiveSizer.unitWidth.lp16;
```

## Features

- Responsive sizing based on logical pixels
- Support for both static and context-based sizing
- Safe area padding calculations
- Standard width/height configuration
