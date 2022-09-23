import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.only(left: 15,right: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Color(0xffF42A41),
                  borderRadius: BorderRadius.circular(30),
              ),
              child: Image.asset('assets/Vector1.png'),
            )
          ]
        ),
        Expanded(
          flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 2),
              child: TextField(
          cursorColor: Colors.grey[900],
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide(width: 1,color: Color(0xffF42A41)),
                ),
                hintText: 'Search with keyword... ',
                hintStyle: GoogleFonts.ubuntu(
                    color: Colors.grey[900],
                    fontSize: 12,
                  fontWeight: FontWeight.w300
                ),
                //contentPadding: EdgeInsets.zero,
                prefixIcon: Container(
                  padding: EdgeInsets.all(20),
                  child: Image.asset('assets/Vector2.png')
                  //child: Image.asset('assets/search.png',width: 10),
                )
          )
              )
            )
        ),
        Expanded(
          flex: 1,
          child:Stack(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: Image.asset('assets/Vector.png'),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffF42A41),
                          borderRadius: BorderRadius.circular(30)
                      ),
                    )
                  ]
              ),
              // Positioned(
              //     left: 10,
              //     top: 12,
              //     child: Container(
              //       padding: EdgeInsets.all(4),
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(20),
              //           color: Color(0xff006A4E),
              //       ),
              //     )
              // ),
            ],
          ),
        ),
      ],
    ),
    );
  }
}
