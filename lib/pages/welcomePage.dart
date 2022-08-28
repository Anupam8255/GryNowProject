import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child:
              Icon(Icons.arrow_back_ios, color: Color.fromRGBO(2, 48, 71, 25)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(CupertinoIcons.heart,
                color: Color.fromRGBO(2, 48, 71, 25)),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 90),
        child: Column(
          children: [
            Stack(
              children: [Padding(
                padding: const EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    'https://scontent.fixc1-5.fna.fbcdn.net/v/t1.18169-9/27657679_1891196740922123_4597767714757554082_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=fR3B7hegVTIAX_aJ1hT&_nc_ht=scontent.fixc1-5.fna&oh=00_AT-3GNLvDMUczBHt8AfFC1BmvE1iVH9nhAzmXLOQWe2FCg&oe=6331E1A9',
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.only(right: 30, top: 30),
                child: ElevatedButton(onPressed: () {},
                style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                ),
                backgroundColor: MaterialStateProperty.all(Colors.grey.withOpacity(0.8)),
                foregroundColor: MaterialStateProperty.all(Colors.pink),
                ),
                 child: 
                Container(
                  width: 44,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // ignore: prefer_const_constructors
                      Padding(
                        padding: const EdgeInsets.only(top:2.0),
                        child: Text("4.8"),
                      ),
                      Icon(CupertinoIcons.star_fill, size: 14,),
                    ],
                  ),
                ),),
              ),
              ],
              
            ),
            Container(
              child: GoogleMap(initialCameraPosition: CameraPosition(target: LatLng(31.217550, 75.769012))),
            )
          ],
        ),
      ),
    );
  }
}
