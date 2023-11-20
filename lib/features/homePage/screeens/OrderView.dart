import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:kalpaka_customer_app/core/globalVariables.dart';
import 'package:scroll_page_view/pager/page_controller.dart';
import 'package:scroll_page_view/pager/scroll_page_view.dart';

import '../../../core/constants.dart';

class OrderSingleView extends StatefulWidget {
  const OrderSingleView({super.key});

  @override
  State<OrderSingleView> createState() => _OrderSingleViewState();
}

class _OrderSingleViewState extends State<OrderSingleView> {
  static const _images = [
    'https://i.pravatar.cc/150?img=1',
    'https://i.pravatar.cc/150?img=2',
    'https://i.pravatar.cc/150?img=3',
    'https://i.pravatar.cc/150?img=4',
    'https://i.pravatar.cc/150?img=5',
  ];
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
            'Call Now',
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
              SizedBox(
                  height: h * 0.06,
                  child: Row(
                    children: [
                      SizedBox(
                        width: w * 0.02,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset(
                          Constants.arrowLeft,
                          color: Colors.black,
                          height: h * 0.03,
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: h * 0.4,
                child: ScrollPageView(
                  delay: const Duration(seconds: 6),
                  controller: ScrollPageController(),
                  allowImplicitScrolling: false,
                  clipBehavior: Clip.none,
                  reverse: false,
                  checkedIndicatorColor: Colors.purple,
                  children: _images.map((image) => _imageView(image)).toList(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: w * 0.045),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: h * 0.02),
                    Text(
                      'Vehicle Model :',
                      style: GoogleFonts.urbanist(
                        textStyle: TextStyle(
                          fontSize: h * 0.02,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'OLA S1 PRO',
                      style: GoogleFonts.urbanist(
                        fontSize: h * 0.017,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: h * 0.01),
                    Text(
                      'Vehicle Number :',
                      style: GoogleFonts.urbanist(
                        textStyle: TextStyle(
                          fontSize: h * 0.02,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'KL52U2117',
                      style: GoogleFonts.urbanist(
                        fontSize: h * 0.017,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: h * 0.01),
                    Text(
                      'Chase Number :',
                      style: GoogleFonts.urbanist(
                        textStyle: TextStyle(
                          fontSize: h * 0.02,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'KL5WERTYUIO4567892U2117',
                      style: GoogleFonts.urbanist(
                        fontSize: h * 0.017,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: h * 0.01),
                    Text(
                      'Engine Number :',
                      style: GoogleFonts.urbanist(
                        textStyle: TextStyle(
                          fontSize: h * 0.02,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'KLWERT4567890FGHJK52U2117',
                      style: GoogleFonts.urbanist(
                        fontSize: h * 0.017,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: h * 0.01),
                    Text(
                      'Order Date :',
                      style: GoogleFonts.urbanist(
                        textStyle: TextStyle(
                          fontSize: h * 0.02,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      '13 September 2023',
                      style: GoogleFonts.urbanist(
                        fontSize: h * 0.017,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: h * 0.01),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(w * 0.04, 0, w * 0.05, 0),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.network(
                          'https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: h * 0.01),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Back body updated',
                            style: GoogleFonts.urbanist(
                              textStyle: TextStyle(
                                fontSize: h * 0.018,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            DateFormat('d MMM y - hh:mm a')
                                .format(DateTime.now()),
                            style: GoogleFonts.urbanist(
                              textStyle: TextStyle(
                                fontSize: h * 0.013,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: h * 0.02)
                      ],
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

  Widget _imageView(String image) {
    return ClipRRect(
      clipBehavior: Clip.none,
      child: Image.network(image, fit: BoxFit.cover),
    );
  }
}
