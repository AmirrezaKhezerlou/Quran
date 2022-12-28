import 'package:flutter/material.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.02,
      left: MediaQuery.of(context).size.width * 0.02,
      child: const BackButton(),
    );
  }
}
