import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdo/screen/more_screens/AddressScreen/support_screen.dart';
import '../../../routers/routers.dart';
import 'package:google_fonts/google_fonts.dart';


class DeliveryTrackingScreen extends StatefulWidget {
  const DeliveryTrackingScreen({super.key});
  static String route = '/DeliveryTrackingScreen';

  @override
  State<DeliveryTrackingScreen> createState() => _DeliveryTrackingScreenState();
}

class _DeliveryTrackingScreenState extends State<DeliveryTrackingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: (){
            Get.back();
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/common_back.png',
                height: 40,
                width: 40,
              )
            ],
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/icons/home_more.png',
              height: 20,
              width: 20,
              color: const Color(0xFFEAAD21),
            ),
            addWidth(10),
            Text('Delivery Location',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.black
              ),),
            addWidth(10),
            Image.asset('assets/icons/home_more.png',
              height: 20,
              width: 20,
              color: const Color(0xFFEAAD21),
            ),
          ],
        ),
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(0.5),
        elevation: 5,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.4,
            child:Stack(
              children: [
                Image.asset('assets/icons/map_location.png',
                width: Get.width,
                fit: BoxFit.cover,),
                Positioned(
                  left: 60,
                  top: 40,
                  child: Image.asset('assets/icons/duri.png',
                             height: 218,
                  width: 200,),
                ),
              ],
            )
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.35,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    addHeight(20),
                    Center(
                      child: Container(
                        width: 40,
                        height: 5,
                        decoration: BoxDecoration(
                            color: const Color(0xFFD8D8D8),
                            borderRadius: BorderRadius.circular(6)
                        ),
                      ),
                    ),
                    addHeight(20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/icons/location_mark.png',
                          height: 36,
                          width: 36,
                        ),
                        addWidth(8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Delivery Address',
                              style: GoogleFonts.poppins(fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black
                              ),
                            ),
                            addHeight(9),
                            Text('MOKA\'s Home\nBlockbld, Hamit Husni, Mokawol St.\nMobile number: +9687818380',
                              style: GoogleFonts.poppins(fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF333333)
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                   addHeight(30),
                   const Divider(
                     color: Color(0xFFD8D8D8),
                     height: 1,
                   ),
                   addHeight(30),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 43.0),
                       child: Text(
                        'Order Tracking',
                        style: GoogleFonts.poppins(fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black
                        ),
                                           ),
                     ),
                    const SizedBox(height: 30),
                    _buildTrackingStep('search', 'Confirming your order', 'Contact order'),
                    _buildTrackingStep('preparing', 'Preparing your food', 'Be Patient, we are confirming your order'),
                    _buildTrackingStep('driver_assigned', 'Driver Assigned', 'The Courier will serve your food'),
                    _buildTrackingStep('track', 'Delivering your food', 'Be patient we are delivering your food'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTrackingStep(String icon, String title, String subtitle) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      leading: Image.asset('assets/icons/$icon.png',height: 36,width: 36,),
      title: Text(title, style: GoogleFonts.poppins(fontSize: 14,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF2C2B30)
      ),),
      subtitle: Text(subtitle,style: GoogleFonts.poppins(fontSize: 12,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF7E7E7E)
      ),),
      onTap: (){
        Get.toNamed(FoodSupport.route);
      },
    );
  }
}
