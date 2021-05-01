import 'package:flutter/material.dart';
import 'package:meatMart/product_info.dart';
import 'colors.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String qrData = null;
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Padding(
                  //padding: const EdgeInsets.only(top: 40.0),
                  padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        verticalDirection: VerticalDirection.down,
                        children: <Widget>[
                          MaterialButton(
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0, 1),
                                    color: Colors.black12,
                                    blurRadius: 90.0,
                                  )
                                ],
                              ),
                              child: Icon(
                                Icons.menu,
                                color: kFontColor,
                              ),
                            ),
                            onPressed: () {},
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 1),
                                        color: Colors.black12,
                                        blurRadius: 90.0,
                                      )
                                    ],
                                    color: Color(0xfffffff).withOpacity(1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Image.asset(
                                    'images/avatar.png',
                                    height: 20,
                                    width: 20,
                                  ),
                                )),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, left: 10),
                        child: Row(
                          children: [
                            Text("Welcome,",
                                style: GoogleFonts.poppins(
                                    fontSize: 18.0, fontWeight: FontWeight.w400)),

                              SizedBox(
                                                      width: 8,
                                                    ),
                                    Text("Aditi Ravi",
                                style: GoogleFonts.poppins(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      )
                    ],
                  ),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              //   child: TextField(
              //     style:
              //         TextStyle(fontSize: 15.0, height: 1, color: Colors.black),
              //     //maxLines: 2,
              //     decoration: InputDecoration(
              //       filled: true,
              //       fillColor: kBlue4.withOpacity(0.05),
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(15.0),
              //         borderSide: BorderSide.none,
              //       ),
              //       prefixIcon: Icon(
              //         Icons.search,
              //         color: Colors.black54,
              //       ),
              //       hintText: 'Search',
              //       hintStyle: GoogleFonts.poppins(
              //           fontSize: 14,
              //           fontWeight: FontWeight.w500,
              //           color: kFontColor.withOpacity(0.5)),
              //     ),
              //   ),
              // ),
              buildInfoCards(),
              Container(
                  padding: EdgeInsets.fromLTRB(25, 20, 20, 5),
                  child: Text(
                    "Shop by category",
                    style: GoogleFonts.poppins(
                        fontSize: 16.5,
                        fontWeight: FontWeight.w600,
                        color: kFontColor.withOpacity(0.9)),
                  )),
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                height: 490,
                child: GridView.count(
                   physics: ScrollPhysics(),
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  children: List.generate(choices.length, (index) {
                    return Center(
                      child: SelectCard(choice: choices[index]),
                    );
                  }),
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(25, 20, 20, 5),
                  child: Text(
                    "Popular",
                    style: GoogleFonts.poppins(
                        fontSize: 16.5,
                        fontWeight: FontWeight.w600,
                        color: kFontColor.withOpacity(0.9)),
                  )),
              Container(
                padding: EdgeInsets.fromLTRB(18, 2, 0, 10),
                height: 280,
                child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            height: 255,
                            width: w / 1.6,
                            child: GestureDetector(
                              onTap:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ProductInfo()));
                              },
                              child: Card(
                                color: Color(0xFFffffff),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 2,
                                child: Container(
                                    //margin: EdgeInsets.all(15),
                                    //padding: EdgeInsets.fromLTRB(0,5,0,5),
                                    child: Container(
                                      height: 400,
                                      width: w / 3.2,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                              flex: 5,
                                              child: Container(
                                                width:  500,
                                                decoration: new BoxDecoration(
                                                    image:
                                                        new DecorationImage(
                                                  image: new AssetImage(
                                                      "images/chicken.jpg"),
                                                  fit: BoxFit.fill,
                                                )),
                                              )),
                                          SizedBox(height: 2,),
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top:6,left: 10),
                                              child: Text('Fresh Chicken',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 13.0,
                                                      color:kHeading,
                                                      fontWeight:
                                                          FontWeight.w700)),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              // height: 40,
                                              // width: 100,
                                              child: Padding(
                                                padding: const EdgeInsets.only(left:10),
                                                child: Text(
                                                  '200 - 210 Grams',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 13.0,
                                                      color: kFontColor,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ),

                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              child: Padding(
                                                padding: const EdgeInsets.only(left:11.5),
                                                child: Text(
                                                  '1 Pack',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 11.0,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Row(
                                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left:12,),
                                                  child: Text('Rs.120',style:GoogleFonts.poppins(
                                                      fontSize: 15.0,
                                                      color: kBlue4,
                                                      fontWeight:
                                                      FontWeight.w600),),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(right:10,),
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
                                                      'Add to cart',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10,)
                                        ],
                                      ),
                                    )),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildInfoCards() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 78,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(width: 1, color: kBlue4),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: Colors.black12,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  //color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Image.asset(
                        'images/no.png',
                        height: 31,
                        width: 31,
                        color: kBlue4,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Antibiotic \nfree',
                        style: GoogleFonts.poppins(
                          letterSpacing: .2,
                          fontSize: 10,
                          color: kBlue4,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 78,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(width: 1, color: kBlue4),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: Colors.black12,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Image.asset(
                        'images/healthy-living.png',
                        height: 34,
                        width: 34,
                        color: kBlue4,
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      Text(
                        'Hygienic & healthy',
                        style: GoogleFonts.poppins(
                          letterSpacing: .2,
                          fontSize: 10,
                          color: kBlue4,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 78,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(width: 1, color: kBlue4),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: Colors.black12,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Image.asset(
                        'images/farm-house.png',
                        height: 29,
                        width: 29,
                        color: kBlue4,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Farm fresh meat',
                        style: GoogleFonts.poppins(
                          letterSpacing: .2,
                          fontSize: 10,
                          color: kBlue4,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 78,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(width: 1, color: kBlue4),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: Colors.black12,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/halal.png',
                        height: 35,
                        width: 35,
                        color: kBlue4,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Halal cut',
                        style: GoogleFonts.poppins(
                          letterSpacing: .2,
                          fontSize: 10,
                          color: kBlue4,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Choice {
  const Choice({this.title, this.imgurl});
  final String title;
  final String imgurl;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Dry Fish', imgurl: 'images/dryfish.jpg'),
  const Choice(title: 'Combo', imgurl: 'images/combo.jpeg'),
  const Choice(title: 'Chicken', imgurl: 'images/chicken.jpg'),
  const Choice(title: 'Mutton', imgurl: 'images/mutton.png'),
  const Choice(title: 'Sea Food', imgurl: 'images/seafood.jpg'),
  const Choice(title: 'Ready to Cook', imgurl: 'images/marinatedmeat.jpg'),
  const Choice(title: 'Cold Cuts', imgurl: 'images/coldcuts.jpg'),
  const Choice(title: 'Eggs', imgurl: 'images/eggs.jpg'),
  const Choice(title: 'Pickles', imgurl: 'images/pickles.jpeg'),
  const Choice(title: 'Spices', imgurl: 'images/spices.jpg'),
  const Choice(title: 'Party Pack', imgurl: 'images/partypack.jpg'),
  const Choice(title: 'Deals', imgurl: 'images/deals.jpeg'),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1,
        color: Colors.white,
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Image.asset(
                  choice.imgurl,
                  height: 200,
                  width: 200,
                )),
                Padding(
                  padding: const EdgeInsets.all(7),
                  child: Text(choice.title,
                      style: GoogleFonts.poppins(fontSize: 12)),
                ),
              ]),
        ));
  }
}
