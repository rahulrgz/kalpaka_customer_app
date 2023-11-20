import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:kalpaka_customer_app/core/theme/pallete.dart';
import 'package:kalpaka_customer_app/features/homePage/screeens/OrderView.dart';

import '../../../core/constants.dart';
import '../../../core/globalVariables.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(w * 0.07),
              ),
              minimumSize: Size(w * 0.9, h * 0.06),
              backgroundColor: Colors.purple),
          onPressed: () {},
          child: Text(
            'Contact Us',
            style: GoogleFonts.urbanist(
              textStyle: TextStyle(
                fontSize: h * 0.02,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: w,
                decoration: BoxDecoration(
                  color: Pallete.secondaryColor,
                  borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(w * 0.1),
                    bottomEnd: Radius.circular(w * 0.1),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: h * 0.02),
                    Text(
                      'Welcome,',
                      style: GoogleFonts.urbanist(
                        textStyle: TextStyle(
                          fontSize: h * 0.015,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      'Customer',
                      style: GoogleFonts.urbanist(
                        textStyle: TextStyle(
                          fontSize: h * 0.022,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: h * 0.02),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(w * 0.04, h * 0.03, w * 0.05, 0),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, h * 0.02),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const OrderSingleView(),
                            ),
                          );
                        },
                        child: Container(
                          height: h * 0.1,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadiusDirectional.circular(w * 0.03),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 1,
                                    // blurStyle: BlurStyle.inner,
                                    spreadRadius: 0.3,
                                    offset: Offset(0, 0))
                              ]),
                          child: Padding(
                            padding: EdgeInsets.all(w * 0.01),
                            child: Row(
                              children: [
                                SizedBox(width: w * 0.02),
                                SizedBox(
                                  height: h * 0.08,
                                  child: Image.network(
                                    'https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: w * 0.02),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Vehicle Name',
                                      style: GoogleFonts.urbanist(
                                        textStyle: TextStyle(
                                          fontSize: h * 0.018,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Vehicle Number',
                                      style: GoogleFonts.urbanist(
                                        textStyle: TextStyle(
                                          fontSize: h * 0.013,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Engine Number',
                                      style: GoogleFonts.urbanist(
                                        textStyle: TextStyle(
                                          fontSize: h * 0.013,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Chase Number',
                                      style: GoogleFonts.urbanist(
                                        textStyle: TextStyle(
                                          fontSize: h * 0.013,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: h * 0.07)
            ],
          ),
        ),
      ),
    );
  }
}
