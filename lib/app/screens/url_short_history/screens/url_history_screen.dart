import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hive/hive.dart';
import 'package:shortly_flutter/app/global/components/elevated_button_components.dart';
import 'package:shortly_flutter/app/global/get_it/get_it.dart';
import 'package:shortly_flutter/app/global/helpers/padding_helpers.dart';
import 'package:flutter/services.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:shortly_flutter/app/screens/url_short_history/model/url_history_hive_model.dart';
import 'package:shortly_flutter/app/screens/url_short_history/screens/widgets/url_history_list_cell_widget.dart';
import 'package:shortly_flutter/app/screens/url_short_history/viewmodel/url_history_viewmodel.dart';
import 'package:shortly_flutter/core/hive/hive_helper.dart';
import 'package:shortly_flutter/core/localization/widget/locale_text_widget.dart';

class URLHistoryScreen extends StatelessWidget {
  URLHistoryScreen({Key? key}) : super(key: key);
  final URLHistoryViewModel _urlHistoryViewModel =
      getIt.get<URLHistoryViewModel>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Spacer(flex: 10),
          Expanded(flex: 10, child: _getHistoryScreenTitle(context)),
          Expanded(flex: 90, child: _listenHiveDataHistoryMethod()),
        ],
      ),
    );
  }

  Widget _getHistoryScreenTitle(BuildContext context) {
    return TranslationText(
        text: "Your History Link",
        style: Theme.of(context).textTheme.subtitle1);
  }

  ValueListenableBuilder<Box<URLHistoryHiveModel>>
      _listenHiveDataHistoryMethod() {
    return ValueListenableBuilder<Box<URLHistoryHiveModel>>(
      valueListenable:
          Hive.box<URLHistoryHiveModel>(HiveHelper.instance.urlHistory)
              .listenable(),
      builder: (context, box, child) {
        var data = box.values.toList().cast<URLHistoryHiveModel>();
        return _getHiveDataListView(data);
      },
    );
  }

  Widget _getHiveDataListView(List<URLHistoryHiveModel> data) =>
      ListView.builder(
        itemBuilder: (context, index) {
          return CupertinoFormSection.insetGrouped(
            children: [
              URLHistoryListViewCell(
                onPressed: () async {
                  await _urlHistoryViewModel.deleteURLHistoryHive(index);
                },
                urlLink: data[index].originalLink ?? "",
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        data[index].fullShareLink ?? "",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ),
                    ElevatedButtonsComponent(
                      backgroundColor:
                          _urlHistoryViewModel.copyButtonBackgroundColorControl(
                              data[index].copiedButton ?? false),
                      onPressed: () async {
                        await Clipboard.setData(
                                ClipboardData(text: data[index].fullShareLink))
                            .then((value) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(data[index].fullShareLink ?? "")));
                        });
                        await _urlHistoryViewModel.setUpdateCopiedButton(index,
                            data: data[index]);
                      },
                      buttonTitle: _urlHistoryViewModel.copyButtonTitleControl(
                          data[index].copiedButton ?? false),
                      buttonHeight: 0.05,
                    ),
                  ],
                ),
              )
            ],
          );
        },
        itemCount: data.length,
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(vertical: 3),
      );
}
