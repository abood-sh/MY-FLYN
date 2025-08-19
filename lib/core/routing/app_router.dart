import 'package:flutter/material.dart';
import 'package:my_flyn/core/routing/routers.dart';
import 'package:my_flyn/features/baseinfo/base_info_screen.dart';
import 'package:my_flyn/features/campaign/ui/campaign_screen.dart';
import 'package:my_flyn/features/flyn/ui/flyn_screen.dart';
import 'package:my_flyn/features/personal_information/ui/personal_information.dart';
import 'package:my_flyn/features/setPassword/set_password_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routers.myFlynScreen:
        return MaterialPageRoute(builder: (context) => const FlynPage());
      case Routers.campaignScreen:
        return MaterialPageRoute(builder: (context) => const CampaignPage());
      case Routers.personalInfoScreen:
        return MaterialPageRoute(
          builder: (context) => const PersonalInformationPage(),
        );
      case Routers.baseInfoScreen:
        return MaterialPageRoute(builder: (context) => const BaseInfoPage());
      case Routers.setPasswordScreen:
        return MaterialPageRoute(builder: (context) => const SetPasswordPage());

      default:
        null;
    }
    return null;
  }
}
