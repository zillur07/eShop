import 'package:eshop_app/views/category_screen/item_details.dart';
import 'package:eshop_app/widgets_common/bg_wdget.dart';

import '../../consts/consts.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;

  CategoryDetails({required this.title});
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: title!.text.bold.white.make(),
      ),
      body: Container(
        child: Column(
          children: [
            5.heightBox,
            SingleChildScrollView(
              padding: EdgeInsets.all(
                10,
              ),
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: List.generate(
                    6,
                    (index) => 'Baby Clothing'
                        .text
                        .color(darkFontGrey)
                        .size(12)
                        .fontFamily(semibold)
                        .makeCentered()
                        .box
                        .white
                        .roundedSM
                        .size(120, 60)
                        .margin(EdgeInsets.symmetric(
                          horizontal: 5,
                        ))
                        .make()),
              ),
            ),

            // Product item list
            10.heightBox,
            Expanded(
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 0,
                  mainAxisExtent: 250,
                ),
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        imgP5,
                        height: 130,
                        width: 190,
                        fit: BoxFit.cover,
                      ),
                      10.heightBox,
                      Spacer(),
                      'Laptop 8GB/200GB'
                          .text
                          .semiBold
                          .color(darkFontGrey)
                          .make(),
                      10.heightBox,
                      '\$6000'
                          .text
                          .size(16)
                          .color(redColor)
                          .fontFamily(bold)
                          .make()
                    ],
                  )
                      .box
                      .white
                      .roundedSM
                      .padding(EdgeInsets.all(12))
                      .margin(EdgeInsets.symmetric(
                        horizontal: 10,
                      ))
                      .make()
                      .onTap(() {
                    Get.to(() => ItemDetails(title: 'Dumy Item'));
                  });
                },
              ),
            ),
            5.heightBox,
          ],
        ),
      ),
    ));
  }
}
