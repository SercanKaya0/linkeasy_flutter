import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class URLHistoryListViewCell extends StatelessWidget {
  const URLHistoryListViewCell(
      {Key? key, required this.onPressed, required this.urlLink})
      : super(key: key);
  final void Function()? onPressed;
  final String? urlLink;

  @override
  Widget build(BuildContext context) {
    return CupertinoFormRow(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(flex: 90, child: Text(urlLink!)),
          Expanded(
              flex: 10,
              child: IconButton(onPressed: onPressed, icon: Icon(Icons.delete)))
        ],
      ),
    );
  }
}
