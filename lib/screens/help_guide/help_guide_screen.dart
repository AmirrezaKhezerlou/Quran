import 'package:al_quran/configs/app.dart';
import 'package:al_quran/configs/configs.dart';
import 'package:al_quran/utils/assets.dart';
import 'package:al_quran/utils/links.dart';
import 'package:al_quran/widgets/app/app_version.dart';
import 'package:al_quran/widgets/button/app_back_button.dart';
import 'package:al_quran/widgets/custom_image.dart';
import 'package:al_quran/widgets/app/title.dart';
import 'package:flutter/material.dart';

class HelpGuide extends StatelessWidget {
  const HelpGuide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            CustomImage(
              imagePath: StaticAssets.gradLogo,
              opacity: 0.5,
              height: MediaQuery.of(context).size.height * 0.18,
            ),
            const AppBackButton(),
            const CustomTitle(title: "راهنما"),
            const Guidelines(),
            const AppVersion(),
          ],
        ),
      ),
    );
  }
}

class Guidelines extends StatelessWidget {
  const Guidelines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: EdgeInsets.fromLTRB(0, height * 0.2, 0, height * 0.1),
      child: ListView(
        children: <Widget>[
          const GuideContainer(
            guideNo: 1,
            title: "اتصال ایترنت",
            guideDescription:
                "شما برای اولین اجرای برنامه نیاز به اتصال اینترنت دارید",
          ),
          const GuideContainer(
            title: "جز ها و سوره ها",
            guideNo: 2,
            guideDescription:
                "تمام سی جز و صد و چهار ده سوره ی قرآن کریم در اپلیکیشن قرآن کریم.",
          ),
          const GuideContainer(
            guideNo: 3,
            title: "لیست تب ها",
            guideDescription:
                "لیست تب های برنامه را در این قسمت مشاهده کنید.",
          ),
          const GuideContainer(
            guideNo: 4,
            title: "امتیاز به برنامه",
            guideDescription:
                "در صورت رضایت از اپلیکیشن در مارکت ها به ما رای دهید.",
          ),
          const GuideContainer(
            guideNo: 5,
            title: "گزارش ایراد",
            guideDescription:
                "\n\n${Links.api}",
          ),
          GuideContainer(
            guideNo: 7,
            title: "توسعه دهندگان",
            guideDescription:
                "Name: ${Links.dev['name']} \nEmail: ${Links.dev['email']} \nGitHub: ${Links.dev['github']} \nWebsite: ${Links.dev['website']}",
          )
        ],
      ),
    );
  }
}

class GuideContainer extends StatelessWidget {
  final String title;
  final String guideDescription;
  final int guideNo;

  const GuideContainer(
      {Key? key,
      required this.guideNo,
      required this.title,
      required this.guideDescription})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Space.all(),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: <Widget>[
            Text(
              "\n$guideNo. $title",
              style: Theme.of(context).textTheme.bodyText1?.copyWith(fontFamily: 'iransans'),
            ),
            Space.y1!,
            Text(
              guideDescription,
              textAlign: TextAlign.justify,
              style: AppText.b1!.cl(AppTheme.c!.text!).copyWith(fontFamily: 'iransans'),
            ),
          ],
        ),
      ),
    );
  }
}
