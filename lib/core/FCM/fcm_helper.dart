import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseCloudMessageHelper {
  static final FirebaseCloudMessageHelper instance =
      FirebaseCloudMessageHelper();
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  Future<NotificationSettings> requestPermission() async {
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    print('User granted permission: ${settings.authorizationStatus}');
    return settings;
  }

  Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    // If you're going to use other Firebase services in the background, such as Firestore,
    // make sure you call `initializeApp` before using other Firebase services.

    
  }
}
