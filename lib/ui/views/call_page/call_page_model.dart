import 'package:assessment/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class CallPageModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  List<String> images = [
    'images/rec1.png',
    'images/rec2.png',
    'images/rec3.png',
    'images/rec4.png',
  ];
  void navigateToChat() {
    navigationService.navigateToChatPageView();
  }
}
