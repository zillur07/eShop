import 'package:eshop_app/consts/consts.dart';

Widget detailsCard({width, String? count, String? title}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!.text.fontFamily(bold).color(darkFontGrey).size(16).make(),
      title!.text.color(darkFontGrey).make()
    ],
  ).box.white.roundedSM.width(width).height(60).make();
}
