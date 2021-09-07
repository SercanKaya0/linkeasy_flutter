


import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shortly_flutter/core/google/utils/admob_utils.dart';

class AdmobHelper {
  static final AdmobHelper instance = AdmobHelper();
  InterstitialAd? interstitialAd;

  Future<InitializationStatus> googleAdmobInitialize() async {
    return MobileAds.instance.initialize();
  }

  // * Admob id'leri buradan gelir.
  String get admobMobileID =>
      AdmobUtilsHelper.instance.platformSensitiveAdmobID(
          androidAdmobID: "ca-app-pub-TEXT",
          iosAdmobID: "ca-app-pub-TEXT");

  // * Admob işlemlerini dinleyen fonksiyon

  BannerAdListener mobileAdsListenerFunc() {
    return BannerAdListener(
      onAdClosed: (ad) {
        print("onAdClosed ${ad.adUnitId}");
      },
      onAdFailedToLoad: (ad, error) {
        print("onAdFailedToLoad ${ad.adUnitId} error : ${error.message}");
      },
      onAdImpression: (ad) {
        print("onAdImpression ${ad.adUnitId}");
      },
      onAdLoaded: (ad) {
        print("onAdLoaded ${ad.adUnitId}");
      },
      onAdOpened: (ad) {
        print("onAdOpened ${ad.adUnitId}");
      },
      onAdWillDismissScreen: (ad) {
        print("onAdWillDismissScreen ${ad.adUnitId}");
      },
    );
  }

  Future<void> showAdmobInterstitial(
      {required String adUnitId,
      AdRequest? adRequest,
      required Function(LoadAdError error) onAdFailedToLoad,
      Function(InterstitialAd ad)? onADShow}) async {
    InterstitialAd.load(
      adUnitId: adUnitId,
      request: adRequest ?? AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdFailedToLoad: onAdFailedToLoad,
        onAdLoaded: (ad) {
          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdShowedFullScreenContent: (ad) {
              if (onADShow != null) onADShow(ad);
            },
            onAdDismissedFullScreenContent: (ad) {
              if (onADShow != null) onADShow(ad);
              ad.dispose();
            },
            onAdFailedToShowFullScreenContent: (ad, error) {
              ad.dispose();
            },
          );
          ad.show();
        },
      ),
    );
  }
}
