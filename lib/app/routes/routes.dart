import 'package:flutter/widgets.dart';
import 'package:flutter_news/app/app.dart';
import 'package:flutter_news/home/home.dart';
import 'package:flutter_news/onboarding/onboarding.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.onboardingRequired:
      return [OnboardingPage.page()];
    case AppStatus.unauthenticated:
    case AppStatus.authenticated:
      return [HomePage.page()];
  }
}
