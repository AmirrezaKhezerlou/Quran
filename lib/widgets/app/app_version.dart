import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppVersion extends StatefulWidget {
  const AppVersion({Key? key}) : super(key: key);

  @override
  State<AppVersion> createState() => _AppVersionState();
}

class _AppVersionState extends State<AppVersion> {
  String _version = "";

  void _getAppVersion() async {
    PackageInfo _packageInfo = await PackageInfo.fromPlatform();
    if (mounted) {
      setState(() {
        _version = _packageInfo.version;
      });
    }
  }

  @override
  void initState() {
    _getAppVersion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            "قرآن کریم",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'iransans',
                fontSize: MediaQuery.of(context).size.height * 0.018),
          ),
          Text(
            'نسخه 1.0',
            style:
                TextStyle(fontSize: MediaQuery.of(context).size.height * 0.015,fontFamily: 'iransans'),
          )
        ],
      ),
    );
  }
}
