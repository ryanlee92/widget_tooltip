# Widget Tooltip Package
This package provides a tooltip widget that can be used in Flutter applications.

# Installation
Add the following line to your pubspec.yaml file:

```yaml
dependencies:
  widget_tooltip: ^version_number
```

# Usage
```dart
import 'package:flutter/material.dart';
import 'package:widget_tooltip/widget_tooltip.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget Tooltip Example'),
        ),
        body: Center(
          child: WidgetTooltip(
            message: Text('This is a tooltip message'),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Press Me'),
            ),
          ),
        ),
      ),
    );
  }
}
```
# WidgetTooltip Properties
* **message**: The widget to display in the tooltip.
* **child**: The target widget where the tooltip will be displayed.
* **triangleColor**: The color of the tooltip triangle.
* **triangleSize**: The size of the tooltip triangle.
* **triangleRadius**: The radius of the tooltip triangle.
* **targetPadding**: The padding between the target widget and the tooltip.
* **onShow**: Callback function called when the tooltip is shown.
* **onDismiss**: Callback function called when the tooltip is dismissed.
* **controller**: Controller to control the tooltip.
* **messagePadding**: Padding of the tooltip message box.
* **messageDecoration**: Decoration of the tooltip message box.
* **messageStyle**: Style of the tooltip message.
* **padding**: Padding around the tooltip.
* **axis**: The axis on which the tooltip will be displayed (vertical or horizontal).
* **triggerMode**: The trigger mode for showing the tooltip.
* **dismissMode**: The mode for dismissing the tooltip.
* **offsetIgnore**: Whether to ignore the offset.
* **direction**: The direction in which the tooltip will be displayed.