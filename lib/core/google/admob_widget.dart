
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shortly_flutter/core/google/admob_helper.dart';


class GoogleAdmobWidget extends StatefulWidget {
  GoogleAdmobWidget({Key? key}) : super(key: key);

  @override
  _GoogleAdmobWidgetState createState() => _GoogleAdmobWidgetState();
}

class _GoogleAdmobWidgetState extends State<GoogleAdmobWidget> {
  late final BannerAd myAdmob;
  @override
  void initState() {
    myAdmob = BannerAd(
        size: AdSize.fullBanner,
        adUnitId: AdmobHelper.instance.admobMobileID,
        listener: AdmobHelper.instance.mobileAdsListenerFunc(),
        request: AdRequest())
      ..load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: myAdmob.size.width.toDouble(),
      height: myAdmob.size.height.toDouble(),
      child: AdWidget(ad: myAdmob),
    );
  }
}

