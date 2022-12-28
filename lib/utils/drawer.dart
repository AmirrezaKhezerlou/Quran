import 'package:al_quran/app_routes.dart';
import 'package:flutter/material.dart';

class DrawerUtils {
  static const List items = [
    {
      'title': 'لیست سوره ها',
      'icon': Icons.format_list_numbered_outlined,
      'route': AppRoutes.surah,
    },
    {
      'title': 'لیست جز ها',
      'icon': Icons.list,
      'route': AppRoutes.juz,
    },
    {
      'title': 'ذخیره شده',
      'icon': Icons.bookmark_outline,
      'route': AppRoutes.bookmarks,
    },
    {
      'title': 'راهنمای استفاده',
      'icon': Icons.help_outline,
      'route': AppRoutes.helpGuide,
    },
    {
      'title': 'معرفی',
      'icon': Icons.info_outline,
      'route': AppRoutes.onboarding,
    },
    {
      'title': 'اشتراک گذاری',
      'icon': Icons.share_outlined,
      'route': AppRoutes.shareApp,
    },
  ];
}
