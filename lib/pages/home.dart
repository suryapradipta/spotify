import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/widgets/card_widget.dart';

import '../utils/theme.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: false,
        title: Text(
          'Good afternoon',
          style: title24,
        ),
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Image.asset('assets/icons/notification.png'),
                SizedBox(
                  width: 24,
                ),
                Image.asset('assets/icons/time.png'),
                SizedBox(
                  width: 24,
                ),
                Image.asset('assets/icons/setting.png'),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Lists
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: grey2,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      'Music',
                      style: regular13,
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: grey2,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      'Podcasts & Shows',
                      style: regular13,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 12,
            ),

            // Cards

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    children: [
                      Container(
                        width: 167,
                        decoration: BoxDecoration(
                          color: grey,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 56,
                              height: 56,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/liked.png'),
                                      fit: BoxFit.fill)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                children: [
                                  Text(
                                    'Liked Song',
                                    style: regular13.copyWith(
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/playing.svg',
                                    width: 13,
                                    height: 13,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      CardWidget(
                          image: 'assets/images/discover.png', text: 'Discover\nWeekly'),
                      SizedBox(
                        height: 8,
                      ),
                      CardWidget(
                          image: 'assets/images/song.png', text: 'Happier than\never'),
                    ],
                  ),
                ),
                SizedBox(width: 8,),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Column(
                    children: [
                      CardWidget(image: 'assets/images/daily.png', text: 'Daily Drive'),
                      SizedBox(
                        height: 8,
                      ),
                      CardWidget(
                          image: 'assets/images/song2.png', text: 'Ipséité'),
                      SizedBox(
                        height: 8,
                      ),
                      CardWidget(
                          image: 'assets/images/playlist.png', text: 'Fine Line'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 32,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text('Your top mixes', style: title24,),
                ],
              ),
            ),
            SizedBox(height: 16,),
            


          ],
        ),
      ),
    );
  }
}
