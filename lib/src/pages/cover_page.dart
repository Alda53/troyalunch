import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoverPage extends StatelessWidget {
  const CoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[800],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.fastfood_rounded, color: Colors.white, size: 70,),
              Padding(padding: EdgeInsets.all(35.0)),
              Text( 'TROYA',
                textAlign: TextAlign.center, 
                style: GoogleFonts.bebasNeue( 
                  textStyle:( 
                    TextStyle(
                      color: Colors.green, 
                      fontSize: 108, 
                      height: 0.3
                    )
                  ),
                ),
              ),
              Text( ' L U N C H ',
                textAlign: TextAlign.center, 
                style: GoogleFonts.bebasNeue( 
                  textStyle:( 
                    TextStyle(
                      color: Colors.white, 
                      fontSize: 75, 
                      height: 1,

                    )
                  ),
                ),
              ),
            ]
          )
        ), 
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.arrow_forward_rounded),
        onPressed: (){
          Navigator.pushNamed(context, 'primera_page');
        },
      ),
    );
  }
}