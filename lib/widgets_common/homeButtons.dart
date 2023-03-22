import 'package:eshop_app/consts/consts.dart';

Widget homeButtons({width, height, icon, String? title, onPress}) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            width: 26,
          ),
          10.heightBox,
          title!.text.center.fontFamily(semibold).color(darkFontGrey).make()
        ],
      ).box.rounded.white.size(width, height).make(),
    ),
  );
}
