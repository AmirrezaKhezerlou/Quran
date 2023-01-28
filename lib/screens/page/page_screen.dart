part of '../surah/surah_index_screen.dart';

class PageScreen extends StatefulWidget {
  final String? Url;
  final Juz? juz;
  final Chapter? chapter;
  const PageScreen({
    Key? key,
    this.chapter,
    this.juz, this.Url,
  }) : super(key: key);

  @override
  State<PageScreen> createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
   @override
  void dispose() {
    assetsAudioPlayer.stop();
    assetsAudioPlayer.dispose();
    print('Dispose used');
    super.dispose();
  }

   AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
   
   bool has_sound = false;
    void Play_Sound()async{
      if(widget.Url!=null){
        try {
          setState(() {
            has_sound = true;
          });
    await assetsAudioPlayer.open(
      Audio.network(widget.Url!),
      showNotification: true,
      notificationSettings: NotificationSettings(
        stopEnabled: true,
        seekBarEnabled: false,
        customPlayPauseAction: (a){
          a.playOrPause();
    }
      )
    );
    assetsAudioPlayer.play();

  } catch (t) {
    print('Your Error Is : '+t.toString());
    //mp3 unreachable
  }
      }

    }

  @override
  void initState() {
      
      Play_Sound();
    final bookmarkCubit = BookmarkCubit.cubit(context);
    if (widget.chapter != null) {
      bookmarkCubit.checkBookmarked(widget.chapter!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    App.init(context);
    final appProvider = Provider.of<AppProvider>(context);
    final bookmarkCubit = BookmarkCubit.cubit(context);

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: appProvider.isDark ? Colors.grey[900] : Colors.white,
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              actions: [
                
                if (widget.juz == null)
                  BlocBuilder<BookmarkCubit, BookmarkState>(
                    builder: (context, state) {
                      return Row(
                        children: [
                          
                          IconButton(
                            onPressed: () {
                              if (bookmarkCubit.state.isBookmarked!) {
                                bookmarkCubit.updateBookmark(
                                    widget.chapter!, false);
                              } else {
                                bookmarkCubit.updateBookmark(widget.chapter!, true);
                              }
                            },
                            icon: Icon(
                              bookmarkCubit.state.isBookmarked!
                                  ? Icons.bookmark_added
                                  : Icons.bookmark_add_outlined,
                              color: appProvider.isDark
                                  ? Colors.white
                                  : Colors.black54,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
              ],
              leading: BackButton(
                color: appProvider.isDark ? Colors.white : Colors.black54,
              ),
              backgroundColor:
                  appProvider.isDark ? Colors.grey[850] : Colors.white,
              pinned: true,
              floating: true,
              expandedHeight: height * 0.27,
              flexibleSpace: _SurahAppBar(
                data: widget.chapter ??
                    Chapter(
                      englishName: 'شماره جز ${widget.juz!.number}',
                      englishNameTranslation:
                          'بِسْمِ ٱللَّٰهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ',
                      name: JuzUtils.juzNames[(widget.juz!.number! - 1)],
                    ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final verse = widget.chapter == null
                      ? widget.juz!.ayahs![index]
                      : widget.chapter!.ayahs![index];

                  return Padding(
                    padding: EdgeInsets.fromLTRB(width * 0.015, 0, 0, 0),
                    child: WidgetAnimator(
                      child: ListTile(
                        contentPadding: Space.h,
                        trailing: CircleAvatar(
                          radius: AppDimensions.normalize(3.2),
                          backgroundColor: const Color(0xff04364f),
                          child: CircleAvatar(
                            radius: AppDimensions.normalize(2.9),
                            backgroundColor: Colors.white,
                            child: Text(
                              (index + 1).toString(),
                              style: AppText.l2!.copyWith(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        title: Text(
                          verse!.text!,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: 'Noor',
                            fontSize: height * 0.0275,
                          ),
                        ),
                      ),
                    ),
                  );
                },
                childCount: widget.chapter == null
                    ? widget.juz!.ayahs!.length
                    : widget.chapter!.ayahs!.length,
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: has_sound? Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           StreamBuilder(
            stream: assetsAudioPlayer.currentPosition,
builder: (BuildContext context, AsyncSnapshot<Duration> snapshot) {
    //ValueStreamError (ValueStream has no value. You should check ValueStream.hasValue before accessing 
    //ValueStream.value, or use ValueStream.valueOrNull instead.)
    //assetsAudioPlayer.current.value!.audio.duration.inSeconds.toDouble(),
  return SleekCircularSlider(
             min: 0,
             max: assetsAudioPlayer.current.hasValue?assetsAudioPlayer.current.value!.audio.duration.inSeconds.toDouble():1,
             initialValue: snapshot.hasData?snapshot.data!.inSeconds.toDouble():0,
             
             appearance: CircularSliderAppearance(
               customWidths: CustomSliderWidths(progressBarWidth: 5,trackWidth: 3),size: 100),
               
             onChange: (double value) {
               // callback providing a value while its being changed (with a pan gesture),
                
             },
             onChangeStart: (double startValue) {
               // callback providing a starting value (when a pan gesture starts)
             },
             onChangeEnd: (double endValue) {
               // ucallback providing an ending value (when a pan gesture ends),
              assetsAudioPlayer.seekBy(Duration(seconds: endValue.toInt()));
             },
             innerWidget: (double value) {
             return assetsAudioPlayer.builderIsPlaying(
     builder: (context, isPlaying) {
      return !isPlaying? InkWell(onTap: (){
        assetsAudioPlayer.play();
      },
        child: Icon(Icons.play_circle,size: 70,color: Colors.purple[200],)):
        InkWell(
          onTap: (() => assetsAudioPlayer.pause()),
          child: Icon(Icons.pause_circle,size: 70,color: Colors.purple[200],));
      
     }
);
           
               
               // use your custom widget inside the slider (gets a slider value from the callback)
             },
           );
},
      
           ),
          // BottomNavigationBar(
          //   onTap: ((value) {
          //     print(value);
          //     //sefr pakhsh
          //     if(value==0){
          //       assetsAudioPlayer.play();
          //     }else{
          //       assetsAudioPlayer.pause();
          //     }
          //   }),
          //   items: [
          //    BottomNavigationBarItem(icon: Icon(Icons.play_circle),label: 'پخش'),
          //    BottomNavigationBarItem(icon: Icon(Icons.play_circle),label: 'توقف')
          // ]),
        ],
      ):null,
    );
  }
}
