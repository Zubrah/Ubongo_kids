import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final videoUrl = "https://www.youtube.com/watch?v=xn0KDDI18og";
  late YoutubePlayerController _controller;
  late YoutubePlayerController _circuits;
  late YoutubePlayerController _decimals;
  late YoutubePlayerController _utu;

  @override
  void initState() {
    //final videoid_1 = YoutubePlayer.convertUrlToId(videoUrl);
    _controller = YoutubePlayerController(
      initialVideoId: "xn0KDDI18og",
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: true,
        useHybridComposition: true,
      ),
    );
    _circuits = YoutubePlayerController(
      initialVideoId: "wbiEughniQk",
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: true,
        useHybridComposition: true,
      ),
    );
    _decimals = YoutubePlayerController(
      initialVideoId: "TrU2RNB5hcs",
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: true,
        useHybridComposition: true,
      ),
    );
    _utu = YoutubePlayerController(
      initialVideoId: "Es3NvVWdPRA",
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: true,
        useHybridComposition: true,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            "assets/images/ubongo logore.png",
            width: 150,
            height: 300,
            fit: BoxFit.contain,
            scale: 2.0,
          ),
        ),
        actions: [
          //add
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          Container(
            width: 80,
            height: 80,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
            child: Image.asset(
              "assets/images/baraka-side.png",
              fit: BoxFit.contain,
            ),
          ),
        ],
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            alignment: const AlignmentDirectional(1, 0),
            child: Scrollbar(
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  // ignore: prefer_const_literals_to_create_immutables, , , ,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      YoutubePlayer(
                        controller: _controller,
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: Colors.green,
                      ),
                      const Text(
                        'What is a Spinal Cord Injury? | At School with Ubongo Kids ',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      YoutubePlayer(
                        controller: _circuits,
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: Colors.green,
                      ),
                      const Text(
                        'Circuits and Electricity! | Ubongo Kids |African Education ',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      YoutubePlayer(
                        controller: _decimals,
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: Colors.green,
                      ),
                      const Text(
                        'Decimals Are Not Whole: Ubongo Kids Karaoke (English) ',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      YoutubePlayer(
                        controller: _utu,
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: Colors.green,
                      ),
                      const Text(
                        'Keep the light of UTU shining bright | Life Lessons with Ubongo Kids',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
