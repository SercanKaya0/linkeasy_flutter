import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:share/share.dart';

import '../../../../core/hive/hive_helper.dart';
import '../../../../core/localization/widget/locale_text_widget.dart';
import '../../../global/components/elevated_button_components.dart';
import '../../../global/get_it/get_it.dart';
import '../model/url_history_hive_model.dart';
import '../viewmodel/url_history_viewmodel.dart';
import 'widgets/url_history_list_cell_widget.dart';

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
        text: "url_short_history.head_title",
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
                      onPressed: () async {
                        Share.share(data[index].fullShareLink!,
                            subject: 'EasyLink');
                      },
                      buttonTitle: "url_short_history.share_button",
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
