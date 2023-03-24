import 'package:eshop_app/widgets_common/out_button.dart';

import '../../consts/consts.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  ItemDetails({required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightGrey,
        appBar: AppBar(
          elevation: 0,
          title: title!.text.color(darkFontGrey).bold.make(),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_outline,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Swiper Section ............
                    VxSwiper.builder(
                        itemCount: 3,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        height: 350,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            imgFc5,
                            width: Get.width,
                            fit: BoxFit.cover,
                          );
                        }),

                    // Titel and Detils Section ..............
                    10.heightBox,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: title!.text
                          .size(16)
                          .fontFamily(semibold)
                          .color(darkFontGrey)
                          .make(),
                    ),
                    10.heightBox,
                    // Reating section ...........................
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      child: VxRating(
                        onRatingUpdate: (Value) {},
                        normalColor: textfieldGrey,
                        selectionColor: golden,
                        size: 25,
                        count: 5,
                        stepInt: true,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      child: "\$30.00"
                          .text
                          .color(redColor)
                          .fontFamily(bold)
                          .size(18)
                          .make(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  'Seller'
                                      .text
                                      .white
                                      .fontFamily(semibold)
                                      .color(Colors.white)
                                      .make(),
                                  5.heightBox,
                                  'In House Brand'
                                      .text
                                      .fontFamily(semibold)
                                      .color(darkFontGrey)
                                      .size(15)
                                      .make(),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.message,
                                color: darkFontGrey,
                              ),
                            ),
                          )
                        ],
                      ).box.height(70).color(textfieldGrey).make(),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: Get.width,
              height: 60,
              child: ourButton(
                  color: redColor, onPress: () {}, title: 'Add to Cart'),
            )
          ],
        ));
  }
}
