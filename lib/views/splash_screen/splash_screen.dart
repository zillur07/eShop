import '../../consts/consts.dart';
import '../../widgets_common/applogo_widget.dart';
import '../auth_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
// Creating a method to change screen
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => LoginScreen());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: 300,
              ),
            ),
            20.heightBox,
            applogoWidget(),
            10.heightBox,
            appname.text
                .color(Colors.white)
                .fontFamily(bold)
                .size(22)
                .wide
                .make(),
            5.heightBox,
            appversion.text.white.red300.make(),
            Spacer(),
            credits.text.white.red200.fontFamily(semibold).make(),
            25.heightBox,
          ],
        ),
      ),
    );
  }
}
