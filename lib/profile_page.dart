import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    String qrData = null;
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: 600,
            child: Column(
              children: [
                Padding(
                  padding:
                  const EdgeInsets.only(top: 6, bottom: 0, left: 8, right: 8),
                  child: SingleChildScrollView(
                    physics: ScrollPhysics(),
                    child: Container(

                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 1),
                            color: Colors.black12,
                            blurRadius: 8,
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: InkWell(
                        // onTap: (){
                        //   Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyPan()),);
                        // },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:16.0,right: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 4),
                                        color: Colors.black12,
                                        blurRadius: 8,
                                      )
                                    ],
                                  border: Border.all(color:kBlue4,width: 1.5)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Image.asset(
                                    'images/avatar.png',
                                    height: 35,
                                    width: 35,
                                    color: kFontColor,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 27.0,horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Aditi Ravi',
                                    style: GoogleFonts.poppins(color: kFontColor,fontSize: 18,fontWeight: FontWeight.w600),),
                                  Text('+91 98764 43765',
                                    style:GoogleFonts.poppins(color: kFontColor,fontSize: 13),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: ListView(
                      children: [
                        cont1(),
                        cont2(),
                        cont3(),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget cont1() {
    return Padding(
      padding: const EdgeInsets.only(top: 6, bottom: 0, left: 8, right: 8),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 1),
              color: Colors.black12,
              blurRadius: 8,
            )
          ],
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Column(
          children: [
            InkWell(
              onTap: () {
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15, right: 14, left: 16, bottom: 14),
                    child: Text(
                      'Manage Profile',
                      style:  GoogleFonts.poppins(color: kFontColor,fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: kBlue4,
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 16, right: 14, left: 16, bottom: 14),
                      child: Text(
                        'Manage Addresses',
                        style:  GoogleFonts.poppins(color: kFontColor,fontSize: 14),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: kBlue4,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cont2() {
    return Padding(
      padding: const EdgeInsets.only(top: 6, bottom: 0, left: 8, right: 8),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 1),
              color: Colors.black12,
              blurRadius: 8,
            )
          ],
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Column(
          children: [
            InkWell(
              onTap: () {

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 15, right: 14, left: 16, bottom: 14),
                      child: Text(
                        'Refer & Earn',
                        style: GoogleFonts.poppins(color: kFontColor,fontSize: 14),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: kBlue4,
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 16, right: 14, left: 16, bottom: 14),
                      child: Text(
                        'Manage Payment',
                        style: GoogleFonts.poppins(color: kFontColor,fontSize: 14),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: kBlue4,
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 16, right: 14, left: 16, bottom: 14),
                      child: Text(
                        'Store Locator',
                        style: GoogleFonts.poppins(color: kFontColor,fontSize: 14),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color:kBlue4,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cont3() {
    return Padding(
      padding: const EdgeInsets.only(top: 6, bottom: 6, left: 8, right: 8),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 1),
              color: Colors.black12,
              blurRadius: 8,
            )
          ],
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Column(
          children: [
            InkWell(
              onTap: () {

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 15, right: 14, left: 16, bottom: 14),
                      child: Text(
                        'Contact Us',
                        style: GoogleFonts.poppins(color: kFontColor,fontSize: 14),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color:kBlue4,
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 15, right: 14, left: 16, bottom: 14),
                      child: Text(
                        'Certificates',
                        style: GoogleFonts.poppins(color: kFontColor,fontSize: 14),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color:kBlue4,
                    ),
                  )
                ],
              ),
            ),
            Visibility(
              child: InkWell(
                onTap: () {

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 14, right: 14, left: 16, bottom: 17),
                      child: Text(
                        'Logout',
                        style: GoogleFonts.poppins(color: kFontColor,fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        Icons.input,
                        size: 19,
                        color:kBlue4,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

