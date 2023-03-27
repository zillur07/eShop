import 'package:eshop_app/controllers/auth_controller.dart';
import 'package:eshop_app/views/auth_screen/login_screen.dart';
import 'package:eshop_app/views/home_screen/home.dart';
import '../../consts/consts.dart';
import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/bg_wdget.dart';
import '../../widgets_common/custom_textfeld.dart';
import '../../widgets_common/out_button.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isCheck = false;
  // Controller imput this page
  var controller = Get.put(AuthController());
  // text Edeting Controller
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordRetypeController = TextEditingController();

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
                  controller: nameController,
                  isPass: false,
                ),
                customTextField(
                  hint: emailHint,
                  title: email,
                  controller: emailController,
                  isPass: false,
                ),
                customTextField(
                  hint: passwordHint,
                  title: password,
                  controller: passwordController,
                  isPass: true,
                ),
                customTextField(
                  hint: passwordHint,
                  title: retypePassword,
                  controller: passwordRetypeController,
                  isPass: true,
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: redColor,
                      checkColor: whiteColor,
                      value: isCheck,
                      onChanged: (newValue) {
                        setState(() {
                          isCheck = newValue!;
                        });
                      },
                    ),
                    5.widthBox,
                    Expanded(
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: 'I agree to the ',
                          style: TextStyle(
                              fontFamily: regular,
                              color: fontGrey,
                              fontSize: 13),
                        ),
                        TextSpan(
                          text: termAndCond,
                          style: TextStyle(
                              fontFamily: regular,
                              color: redColor,
                              fontSize: 13),
                        ),
                        TextSpan(
                          text: ' & ',
                          style: TextStyle(
                              fontFamily: regular,
                              color: fontGrey,
                              fontSize: 13),
                        ),
                        TextSpan(
                          text: privacyPolicy,
                          style: TextStyle(
                              fontFamily: regular,
                              color: redColor,
                              fontSize: 13),
                        ),
                      ])),
                    )
                  ],
                ),
                5.heightBox,
                ourButton(
                  color: isCheck == true ? redColor : Colors.grey,
                  onPress: () async {
                    if (isCheck != false) {
                      try {
                        await controller
                            .signupMethod(
                          context: context,
                          email: emailController.text,
                          password: passwordController.text,
                        )
                            .then((value) {
                          return controller.storeUserData(
                            name: nameController.text,
                            email: emailController.text,
                            password: passwordController.text,
                          );
                        }).then((value) {
                          VxToast.show(context, msg: Loggedin);
                          Get.offAll(() => LoginScreen());
                        });
                      } catch (e) {
                        auth.signOut();
                        VxToast.show(context, msg: e.toString());
                      }
                    }
                  },
                  textColor: whiteColor,
                  title: signup,
                ).box.width(context.screenWidth - 50).make(),
                8.heightBox,
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: alreadyHaveAccount,
                    style: TextStyle(
                        fontFamily: regular, fontSize: 13, color: fontGrey),
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
