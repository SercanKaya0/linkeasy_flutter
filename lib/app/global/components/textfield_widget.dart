import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shortly_flutter/app/global/get_it/get_it.dart';
import 'package:shortly_flutter/app/screens/home_page/viewmodel/homescreen_viewmodel.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget(
      {Key? key,
      required this.hintText,
      this.validator,
      this.onSaved,
      this.onChanged,
      this.controller,
      required this.isURLControl})
      : super(key: key);
  final String? hintText;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final bool? isURLControl;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      autofocus: false,
      textAlign: TextAlign.center,
      controller: controller,
      maxLines: 1,
      style: Theme.of(context).textTheme.subtitle1,
      decoration: InputDecoration(
          isDense: true,
          filled: true,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                  color:
                      isURLControl == false ? Colors.transparent : Colors.red)),
          //fillColor: Theme.of(context).inputDecorationTheme.fillColor,
          hintText: hintText?.tr(),
          hintStyle: TextStyle(
              color: isURLControl == false ? Colors.grey : Colors.red)),
      validator: validator,
      minLines: 1,
      onChanged: onChanged,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onSaved: onSaved,
    );
  }
}
