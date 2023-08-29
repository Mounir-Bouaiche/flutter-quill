import 'package:flutter/widgets.dart';

import '../models/themes/quill_theme_data.dart';

class QuillTheme extends InheritedWidget {
  const QuillTheme({
    required super.child,
    required this.data,
    super.key,
  });

  final QuillThemeData data;

  static QuillThemeData? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<QuillTheme>()?.data;
  }

  @override
  bool updateShouldNotify(QuillTheme oldWidget) {
    return oldWidget.data != data;
  }
}
