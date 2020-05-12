import 'package:flutter/material.dart';
import 'package:friday/widgets/extended_container.dart';
import 'package:url_launcher/url_launcher.dart';


class AboutView extends StatefulWidget {
  @override
  _AboutViewState createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                    child: Text(
                      'Some details of Narvis',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                    child: Text(
                      'Know some more of our history : ',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                    child: Text(
                      'NarvisOS is a dream of Nayan, and made possible with his felllow friends.',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                    child: Container(
                      height: 1.5,
                      color: Colors.black45,
                    ),
                  ),
                  Container(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                    child: Text(
                      'Get to know our Team : ',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  ExtendedContainer(title: 'Nayan Arora (TRON_NAYAN17)',
                      subtitle: 'Lead Developer/Project Maintainer',
                      onTap: null),
                  ExtendedContainer(title: 'Jamie Ho (henloboi)',
                      subtitle: 'Lead Developer/Project Maintainer',
                      onTap: null),
                  ExtendedContainer(title:
                  'Shéikh A\'dnan (ElytrA8)',
                      subtitle: 'UI / UX Designer',
                      onTap: null),
                  ExtendedContainer(
                      title: 'Mohit Sethi (MohitSethi99)',
                      subtitle: 'Source Maintainer',
                      onTap: null),
                  ExtendedContainer(
                      title: 'Nandan Menon (nahnah)',
                      subtitle: 'Lead app developer',
                      onTap: null),
                  ExtendedContainer(
                      title: 'Affan S (AffanTheBest)',
                      subtitle: 'Source searcher',
                      onTap: null),
                  ExtendedContainer(title: 'Mayank Joshi',
                      subtitle: 'Web Designer',
                      onTap: null),
                  ExtendedContainer(title: 'Vancel (vancelmusic)',
                      subtitle: 'Media designer',
                      onTap: null),
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                    child: Container(
                      height: 1.5,
                      color: Colors.black12,
                    ),
                  ),
                  ExtendedContainer(
                    title: 'GitHub',
                    subtitle: 'Check out our code',
                    onTap: (){
                      _launchURL('https://github.com/Narvis-OS');
                    },
                  ),
                  ExtendedContainer(
                    title: 'Telegram Support Group',
                    subtitle: 'Know more about our ROM',
                    onTap: (){
                      _launchURL('https://t.me/NarvisOs');
                    },
                  ),
                  ExtendedContainer(
                    title: 'Telegram updates channel',
                    subtitle: 'Where we shiptost our new features',
                    onTap: (){
                      _launchURL('https://t.me/NarvisOSUpdates');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
