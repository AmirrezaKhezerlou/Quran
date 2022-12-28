part of '../home_screen.dart';

class _AyahBottom extends StatelessWidget {
  const _AyahBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            "\"همانا ما قرآن را نازل كرده ایم و ما خود نگهبان آنيم\"",
            textAlign: TextAlign.center,
            style: AppText.b2!.copyWith(
              fontFamily: 'iransans',
              color: AppTheme.c!.text,
            ),
          ),
          Space.y!,
          Text(
            "سوره الحجر آیه 9\n",
            style: AppText.l1!.copyWith(
              fontFamily: 'iransans',
              color: AppTheme.c!.text,
            ),
          ),
        ],
      ),
    );
  }
}
