part of '../sura_list.dart';

class SurahTile extends StatefulWidget {
  final Chapter? chapter;

  const SurahTile({
    Key? key,
    this.chapter,
  }) : super(key: key);

  @override
  State<SurahTile> createState() => _SurahTileState();
}

class _SurahTileState extends State<SurahTile> {

  Future<void> Simple_Play(String Number) async {
  final List<String> Urls = [
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/001_Alfateha.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/002_Albaqara.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/003_Aalumran.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/004_Alnisaa.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/005_Almaeda.mp3  ',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/006_Alanam.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/007_Alaaraf.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/008_Alanfal.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/009_Altawba.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/010_yonis.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/011_houd.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/012_yosif.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/013_Raed.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/014_Ebraheem.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/015_Alhijr.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/016_Alnahl.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/017_Alesraa.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/018_Alkahf.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/019_maryam.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/020_Taha.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/021_Alanbia.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/022_Alhaj.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/023_Almominon.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/024_Alnoor.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/025_Alforqan.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/026_Alshoara.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/027_Alnaml.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/028_Alqasas.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/029_Alankaboot.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/030_Alroom.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/031_Loqman.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/032_Alsajda.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/033_Alahzab.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/034_Alsabaa.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/035_Alfater.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/036_Yaseen.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/037_Alsafat.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/038_sad.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/039_Alzomar.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/040_Ghafer.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/041_Fosselat.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/042_Alshora.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/043_Alzokhref.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/044_Aldokhan.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/045_Aljathia.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/046_Alahqaf.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/047_Muhammad.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/048_Alfateh.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/049_Alhojorat.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/050_Qaf.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/051_Althareyat.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/052_Altour.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/053_Alnajem.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/054_Alqamar.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/055_Alrahman.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/056_Alwaqea.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/057_Alhadeed.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/058_Almujadala.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/059_Alhashr.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/060_Almumtahana.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/061_Alsaf.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/062_Aljumoa.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/063_Almunafiqoon.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/064_Altaghabon.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/065_Altalaq.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/066_Altahreem.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/067_Almulk.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/068_Alqalam.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/069_Alhaqa.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/070_Almaarej.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/071_Nooh.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/072_Aljen.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/073_Almuzamil.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/074_Almuddather.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/075_Alqeyama.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/076_Alensan.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/077_Almurasalat.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/078_Alnabaa.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/079_Alnazeaat.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/080_Abasa.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/081_Altakweer.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/082_Alenfetar.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/083_Almutaffefeen.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/084_Alenshqaq.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/085_Albrooj.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/086_Altareq.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/087_Alaala.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/088_Alghashia.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/089_Alfajer.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/090_Albalad.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/091_Alshams.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/092_Allail.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/093_Aldoha.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/094_Alshrh.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/095_Alteen.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/095_Alteen.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/097_Alqadr.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/098_Albayena.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/099_Alzelzela.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/100_Aladiat.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/101_Alqarea.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/102_Altakathor.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/103_Alaser.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/104_Alhomaza.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/105_Alfeel.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/106_Alquraish.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/107_Almaoon.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/108_Alkaouthar.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/109_Alkaferoon.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/110_Alnaser.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/111_Almasad.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/112_Alekhlas.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/113_Alfalaq.mp3',
    'http://www.aup.ir/asr-entezar/media/quran/93/09/parhizgar/Soore/114_Alnas.mp3',
    ];
 Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => PageScreen(
                chapter: widget.chapter,
                Url: Urls[int.parse(Number)-1],
              ),
            ),
          );
          print(widget.chapter);

  }
  @override
  Widget build(BuildContext context) {
    return WidgetAnimator(
      child: InkWell(
        onTap: () async{
          await Simple_Play(widget.chapter!.number.toString());
         
        },
        onLongPress: () => showDialog(
          context: context,
          builder: (context) => _SurahInformation(
            chapterData: widget.chapter,
          ),
        ),
        child: Padding(
          padding: Space.all(1),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.chapter!.number!.toString()),
              Space.x1!,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.chapter!.englishName!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.chapter!.englishNameTranslation!,
                    style: AppText.b2,
                  )
                ],
              ),
              Expanded(
                child: Text(
                  widget.chapter!.name!,
                  style: AppText.b1b,
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
