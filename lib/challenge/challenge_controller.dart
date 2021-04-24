import 'package:flutter/foundation.dart';

class ChallengeController {
  final currentPageNotifier = ValueNotifier<int>(0);

  int get currentPage => currentPageNotifier.value;
  set currentPage(int value) => currentPageNotifier.value = value;

  int correctChoices = 0;
}

// parei em 57:50
