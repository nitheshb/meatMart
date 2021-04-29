import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meatMart/colors.dart';

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(85),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 50, bottom: 15),
            child: Container(
              //height: 50,
              child: Text(
                'Your Orders',
                style: GoogleFonts.poppins(
                    fontSize: 20.0, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ),
      body: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TabBar(
                unselectedLabelColor: Colors.grey,
                labelColor: kBlue4,
                tabs: [
                  Tab(
                    text: 'Live orders',
                  ),
                  Tab(
                    text: 'Past Orders',
                  ),
                ],
                labelStyle: GoogleFonts.poppins(
                    fontSize: 13, fontWeight: FontWeight.w500),
                //controller: _tabController,
                //isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: kBlue4.withOpacity(0.5),
              ),
              Expanded(
                // height: 600,
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Column(
                          children: [
                            tabConent1(),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Column(
                          children: [
                            tabConent2(),
                          ],
                        ),
                      ),
                    ),
                  ],
                  //controller: _tabController,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget tabConent1() {
    return Column(
      children: <Widget>[
        Container(
          child: Column(
            children: [
              ShaderMask(
                blendMode: BlendMode.srcATop,
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    colors: [Colors.white.withOpacity(0.04), Colors.white.withOpacity(0.04)],
                  ).createShader(bounds);
                },
                child: Image.asset(
                  'images/cart.png',
                  height: 360,
                  width: 360,
                ),
              ),

              Center(child: Text('No Live Orders',style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),)),
            ],
          ),
        )
      ],
    );
  }

  Widget tabConent2() {
    return Column(
      children: <Widget>[
        Container(
          child: Column(
            children: [
              ShaderMask(
                  blendMode: BlendMode.srcATop,
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      colors: [Colors.white.withOpacity(0.04), Colors.white.withOpacity(0.04)],
                    ).createShader(bounds);
                  },
                  child: Image.asset(
                    'images/cart.png',
                    height: 360,
                    width: 360,
                  ),
              ),

              Center(child: Text('No Orders yet :(',style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),)),
            ],
          ),
        )
      ],
    );
  }
}
