import 'package:eshop_app/consts/consts.dart';

Widget featureButton({String? title, icon}) {
  return Row(
    children: [
      Image.asset(
        icon,
        width: 65,
        fit: BoxFit.fill,
      ),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  )
      .box
      .width(220)
      .margin(EdgeInsets.symmetric(
        horizontal: 4,
      ))
      .padding(EdgeInsets.all(4))
      .white
      .roundedSM
      .outerShadowSm
      .make();
}
