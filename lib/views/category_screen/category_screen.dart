import 'package:eshop_app/consts/lists.dart';
import 'package:eshop_app/widgets_common/bg_wdget.dart';

import '../../consts/consts.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: categories.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisExtent: 200,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemCount: 9,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Image.asset(
                  categoryImages[index],
                  height: 120,
                  width: 200,
                  fit: BoxFit.fill,
                ),
                10.heightBox,
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: categorysList[index]
                      .text
                      .semiBold
                      .color(darkFontGrey)
                      .align(TextAlign.center)
                      .make(),
                ),
                16.heightBox,
              ],
            ).box.white.outerShadowSm.roundedSM.make();
          },
        ),
      ),
    ));
  }
}
