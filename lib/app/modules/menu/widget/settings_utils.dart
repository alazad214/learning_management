import 'package:learning_management/app/modules/menu/views/terms_and_conditions.dart';
import 'package:learning_management/app/modules/profile/views/profile_screen.dart';

List<dynamic> settingsUtils = [
  {
    "icon": "assets/icon/profile.png",
    'text': 'Profile',
    'text2': 'View your information',
    'page': ProfileScreen()
  },
  {
    "icon": "assets/icon/download.png",
    'text': 'Save File',
    'text2': 'Open the saved contact',
    'page': TermsAndConditions()
  },
  {
    "icon": "assets/icon/folder.png",
    'text': 'Resource',
    'text2': 'Class resource files and assignments',
    'page': TermsAndConditions()
  },
  {
    "icon": "assets/icon/skill.png",
    'text': 'Skills',
    'text2': 'Check your skills',
    'page': TermsAndConditions()
  },
  {
    "icon": "assets/icon/blog.png",
    'text': 'Blogs',
    'text2': 'Visit the blogs',
    'page': TermsAndConditions()
  },
  {
    "icon": "assets/icon/team.png",
    'text': 'team',
    'text2': 'About us',
    'page': TermsAndConditions()
  },
  {
    "icon": "assets/icon/help.png",
    'text': 'Support',
    'text2': 'Contact for any problem or query',
    'page': const TermsAndConditions()
  },
  {
    "icon": "assets/icon/insurance.png",
    'text': 'Privacy Policy',
    'text2': 'Contact for any problem or query',
    'page': TermsAndConditions()
  },
  {
    "icon": "assets/icon/conditions.png",
    'text': 'Terms And Conditions',
    'text2': 'Contact for any problem or query',
    'page': TermsAndConditions()
  }
];
