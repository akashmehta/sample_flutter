import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();

  Provider({super.key, required super.child});

  @override
  bool updateShouldNotify(oldWidget) => true;

  /// in multi level widget tree there's possibility that the widget which is in
  /// the inner layer and in different file might need bloc object from outer widget
  /// so using getInheritedWidgetOfExactType this thing can be feasible.
  static Provider? of(BuildContext context) =>
      context.getInheritedWidgetOfExactType();
}