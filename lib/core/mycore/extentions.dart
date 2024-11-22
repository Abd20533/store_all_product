import 'package:flutter/material.dart';

extension CustomWidget on Widget {
  Widget center() {
    return Center(
      child: this,
    );
  }

  Widget singleChildScrollViewV() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: this,
    );
  }

  Widget expanded({int? flex, required Image child}) {
    return Expanded(
      flex: flex ?? 0,
      child: this,
    );
  }

  Widget padding(EdgeInsetsGeometry? padding) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(8),
      child: this,
    );
  }

  Widget makeSafeArea() {
    return SafeArea(child: this);
  }

  Widget align({required AlignmentGeometry alignment}) {
    return Align(
      alignment: alignment,
      child: this,
    );
  }

  Widget fittedBox() {
    return FittedBox(
      child: this,
    );
  }

  Widget onTap(VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: this,
    );
  }

  Widget myOnTap(VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: this,
    );
  }

  Widget focusOnTap() {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: this,
    );
  }

  Widget onDoubleTap(VoidCallback onDoubleTap) {
    return GestureDetector(
      onDoubleTap: onDoubleTap,
      child: this,
    );
  }

  Widget onLongPress(VoidCallback onLongPress) {
    return GestureDetector(
      onLongPress: onLongPress,
      child: this,
    );
  }

  Widget isVisible(bool visible) {
    return Visibility(
      visible: visible,
      child: this,
    );
  }
}
