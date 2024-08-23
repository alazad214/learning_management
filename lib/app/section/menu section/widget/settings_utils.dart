import 'package:learning_management/app/modules/profile/views/profile_screen.dart';
import 'package:learning_management/app/modules/support/views/support_screen.dart';
import '../../../modules/about us/views/about_us_screen.dart';
import '../../../modules/privacy policy/views/privacy_policy_screen.dart';
import '../../../modules/terms conditions/views/terms_and_conditions.dart';

List<dynamic> settingsUtils = [
  {
    "icon": "assets/icon/profile.png",
    'text': 'Profile',
    'text2': 'Visit Your Profile',
    'page': const ProfileScreen()
  },
  {
    "icon": "assets/icon/blog.png",
    'text': 'Blogs',
    'text2': 'Visit the blogs',
    'page': const TermsAndConditions()
  },
  {
    "icon": "assets/icon/team.png",
    'text': 'About Us',
    'text2': '',
    'page': const AboutUsScreen()
  },
  {
    "icon": "assets/icon/help.png",
    'text': 'Support',
    'text2': 'Contact for any problem or query',
    'page': const SupportScreen()
  },
  {
    "icon": "assets/icon/insurance.png",
    'text': 'Privacy Policy',
    'text2': 'Contact for any problem or query',
    'page': const PrivacyPolicyScreen()
  },
  {
    "icon": "assets/icon/conditions.png",
    'text': 'Terms And Conditions',
    'text2': 'Contact for any problem or query',
    'page': TermsAndConditions()
  }
];
