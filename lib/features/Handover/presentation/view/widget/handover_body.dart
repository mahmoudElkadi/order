import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order/core/widgets/custom_button.dart';
import 'package:order/core/widgets/custom_form_field.dart';
import 'package:order/core/widgets/heigher-spacer.dart';

class HandoverViewBody extends StatefulWidget {
  const HandoverViewBody({super.key});

  @override
  State<HandoverViewBody> createState() => _HandoverViewBodyState();
}

class _HandoverViewBodyState extends State<HandoverViewBody> {
  TextEditingController idController = TextEditingController();
  TextEditingController reasonController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(15.0.h),
        child: Column(
          children: [
            CustomTextField(
                color: Colors.transparent,
                controller: idController,
                hintText: "Enter Order id Here",
                keyboardType: TextInputType.text),
            const HeightSpacer(15),
            CustomTextField(
                controller: reasonController,
                color: Colors.transparent,
                hintText: "Enter Wait Reason Here",
                keyboardType: TextInputType.text),
            const HeightSpacer(15),
            CustomButton(
              backGroundColor: Colors.green.shade700,
              text: "Handover",
              textSize: 20,
            )
          ],
        ),
      ),
    );
  }
}
