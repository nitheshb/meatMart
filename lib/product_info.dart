import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';
class ProductInfo extends StatefulWidget {
  @override
  _ProductInfoState createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 20,),),
        title: Text('Fresh Chicken',style: GoogleFonts.poppins(color: kFontColor,
            fontSize: 18.0, fontWeight: FontWeight.w600),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 260,
              width: double.infinity,
              decoration: new BoxDecoration(
                  image:
                  new DecorationImage(
                    image: new AssetImage(
                        "images/chicken.jpg"),
                    fit: BoxFit.fill,
                  )),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left:15,),
              child: Text('Fresh Chicken',style:GoogleFonts.poppins(
                  fontSize: 15.0,
                  color: kBlue4,
                  fontWeight:
                  FontWeight.w600),),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15,top: 2,),
              child: Text('200 - 210 Grams',style: GoogleFonts.poppins(color: kFontColor,
                  fontSize: 13.0, fontWeight: FontWeight.w600),),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15,top: 2,),
              child: Text('1 pack',style: GoogleFonts.poppins(color: kFontColor,
                  fontSize: 13.0, fontWeight: FontWeight.w400),),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 212,
                height: 35,
                decoration: BoxDecoration(
                  color: kBlue4.withOpacity(0.1),
                  borderRadius:  BorderRadius.circular(
                        4.0),
                  border: Border.all(color: kBlue4,width: 1.5)
                ),
                child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children:[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('No of Pieces: 7-10',style: GoogleFonts.poppins(color: kBlue4,
                        fontSize: 11.0, fontWeight: FontWeight.w400),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Net wt. 200gms',style: GoogleFonts.poppins(color: kBlue4,
                        fontSize: 11.0, fontWeight: FontWeight.w400),),
                  ),

                ]
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15,),
              child: Text('Rs.120',style:GoogleFonts.poppins(
                  fontSize: 18.0,
                  color: kBlue4,
                  fontWeight:
                  FontWeight.w600),),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15,top: 10,right: 12),
              child: Text('Chicken Thigh is dark meat with a dark pink hue. Skinless and with bone in, this cut has a smooth texture and offers a tender, flavoursome bite.\n\nChicken curry cut with skin is a complete source of healthy lean, low fat protein. It includes a variety of chunky pieces that will add texture and bring out the great taste and delicious flavour in curries.',style: GoogleFonts.poppins(color: kFontColor,
                  fontSize: 13.0, fontWeight: FontWeight.w400),),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15,top: 30),
              child: RaisedButton(
                onPressed: () {},
                elevation: 1,
                //padding: EdgeInsets.all(2),
                //textColor: Colors.white,
                color: kBlue4,
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(
                        3.0)),
                child: Text(
                  'Add to Cart',
                  style: TextStyle(
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
