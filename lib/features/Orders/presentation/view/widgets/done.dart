import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:order/core/widgets/custom_button.dart';
import 'package:order/core/widgets/heigher-spacer.dart';
import 'package:order/core/widgets/reusable_text.dart';
import 'package:order/features/Main/presentation/views/main_view.dart';

class DoneView extends StatelessWidget {
  const DoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeightSpacer(MediaQuery.sizeOf(context).height * 0.17),
        Center(
            child: Lottie.asset("assets/files/done.json",
                repeat: false, fit: BoxFit.cover)),
        const HeightSpacer(20),
        DelayedWidget(
            delayDuration: const Duration(milliseconds: 1000), // Not required
            animationDuration:
                const Duration(milliseconds: 1000), // Not required
            animation: DelayedAnimations.SLIDE_FROM_BOTTOM, // Not required
            child: Column(
              children: [
                ReusableText(
                  text: "Done",
                  style: GoogleFonts.acme(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const HeightSpacer(20),
                ReusableText(
                  text: "Order has been Send",
                  style: GoogleFonts.acme(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const HeightSpacer(20),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.sizeOf(context).width * 0.24),
                  child: CustomButton(
                    onTap: () {
                      Get.offAll(() => const MainView());
                    },
                    height: 15,
                    text: "Create New Order",
                    textSize: 20,
                    backGroundColor: HexColor("#39c77d"),
                    color: Colors.white,
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
