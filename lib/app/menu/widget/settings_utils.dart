import '../../profile/views/profile_screen.dart';
import '../../settings/about_us_screen.dart';
import '../../settings/privacy_policy_screen.dart';
import '../../settings/terms_and_conditions.dart';
import '../../settings/support_screen.dart';

List<dynamic> settingsUtils = [
  {
    "icon": "assets/icon/profile.png",
    'text': 'Profile',
    'text2': 'Visit Your Profile',
    'page': const ProfileScreen()
  },
  {
    "icon": "assets/icon/team.png",
    'text': 'About Us',
    'text2': '',
    'page': AboutUsScreen()
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
    'page': PrivacyPolicyScreen()
  },
  {
    "icon": "assets/icon/conditions.png",
    'text': 'Terms And Conditions',
    'text2': 'Contact for any problem or query',
    'page': TermsAndConditions()
  }
];
