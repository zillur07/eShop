import 'package:eshop_app/controllers/auth_controller.dart';
import 'package:eshop_app/views/auth_screen/signup_screen.dart';
import 'package:eshop_app/views/home_screen/home.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../../consts/consts.dart';
import '../../consts/lists.dart';
import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/bg_wdget.dart';
import '../../widgets_common/custom_textfeld.dart';
import '../../widgets_common/out_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Controller input this page
    var controller = Get.put(AuthController());
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            'Login to $appname'.text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(
                  hint: emailHint,
                  title: email,
                  isPass: false,
                  controller: controller.emailController,
                ),
                customTextField(
                  hint: passwordHint,
                  title: password,
                  isPass: true,
                  controller: controller.passwordController,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                      onPressed: () {}, child: forgetPass.text.make()),
                ),
                5.heightBox,
                ourButton(
                  color: redColor,
                  onPress: () async {
                    await controller
                        .loginMethod(context: context)
                        .then((value) {
                      if (value != null) {
                        VxToast.show(context, msg: Loggedin);
                        Get.offAll(() => Home());
                      }
                    });
                  },
                  textColor: whiteColor,
                  title: login,
                ).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                ourButton(
                  color: lightGolden,
                  onPress: () {
                    Get.to(() => SignupScreen());
                  },
                  textColor: redColor,
                  title: signup,
                ).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                LoginWith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: lightGrey,
                              radius: 25,
                              child: Image.asset(
                                socialIconList[index],
                                width: 30,
                              ),
                            ),
                          )),
                )
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
