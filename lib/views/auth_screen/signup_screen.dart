import 'dart:math';

import '../../consts/consts.dart';
import '../../consts/lists.dart';
import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/bg_wdget.dart';
import '../../widgets_common/custom_textfeld.dart';
import '../../widgets_common/out_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            'Join the $appname'.text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(
                  hint: nameHint,
                  title: name,
                ),
                customTextField(
                  hint: emailHint,
                  title: email,
                ),
                customTextField(
                  hint: passwordHint,
                  title: retypePassword,
                ),
                customTextField(
                  hint: passwordHint,
                  title: password,
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: redColor,
                      value: false,
                      onChanged: (newValue) {},
                    ),
                    5.widthBox,
                    Expanded(
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: 'I agree to the ',
                          style: TextStyle(
                              fontFamily: bold, color: fontGrey, fontSize: 13),
                        ),
                        TextSpan(
                          text: termAndCond,
                          style: TextStyle(
                              fontFamily: bold, color: redColor, fontSize: 13),
                        ),
                        TextSpan(
                          text: '& ',
                          style: TextStyle(
                              fontFamily: bold, color: fontGrey, fontSize: 13),
                        ),
                        TextSpan(
                          text: privacyPolicy,
                          style: TextStyle(
                              fontFamily: bold, color: redColor, fontSize: 13),
                        ),
                      ])),
                    )
                  ],
                ),
                5.heightBox,
                ourButton(
                  color: redColor,
                  onPress: () {},
                  textColor: whiteColor,
                  title: signup,
                ).box.width(context.screenWidth - 50).make(),
                8.heightBox,
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: alreadyHaveAccount,
                    style: TextStyle(
                        fontFamily: bold, fontSize: 13, color: fontGrey),
                  ),
                  TextSpan(
                    text: login,
                    style: TextStyle(
                        fontFamily: bold, fontSize: 13, color: redColor),
                  )
                ])).onTap(() {
                  Get.back();
                })
              ],
            )
                .box
                .white
                .rounded
                .padding(EdgeInsets.all(
                  20,
                ))
                .width(
                  context.screenWidth - 40,
                )
                .shadowSm
                .make()
          ],
        ),
      ),
    ));
  }
}
