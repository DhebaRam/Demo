import 'package:flutter/material.dart';

mixin TextFieldsMixins<T extends StatefulWidget> on State<T> {
  Widget createTextFieldWidget({
    Key? key,
    TextEditingController? controller,
    FocusNode? focusNode,
    autocorrect = false,
    double topLeft = 0,
    double topRight = 0,
    double bottomLeft = 0,
    double bottomRight = 0,
    bool readOnly = false,
    TextAlign textAlign = TextAlign.start,
    BoxConstraints boxConstraints = const BoxConstraints(
        maxHeight: double.infinity,
        maxWidth: double.infinity,
        minHeight: double.infinity,
        minWidth: double.infinity),
    TextStyle textStyle = const TextStyle(color: Colors.black),
    bool obscureText = false,
    final VoidCallback? onTap,
    final Function(dynamic)? onTapOutside,
    int? maxLength,
    TextInputType textInputType = TextInputType.text,
    EdgeInsets scrollPadding = const EdgeInsets.all(20.0)
  }) {
    return Container(
      // constraints: boxConstraints,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(topLeft),
              topRight: Radius.circular(topRight),
              bottomLeft: Radius.circular(bottomLeft),
              bottomRight: Radius.circular(bottomRight))),
      child: TextFormField(
        key: key,
        controller: controller,
        focusNode: focusNode,
        autocorrect: autocorrect,
        readOnly: readOnly,
        textAlign: textAlign,
        style: textStyle,
        obscureText: obscureText,
        onTap: onTap,
        maxLength: maxLength,
        keyboardType: textInputType,
        scrollPadding: scrollPadding,
        onTapOutside: onTapOutside,
      ),
    );
  }
}
