import 'package:eshop_app/consts/lists.dart';
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
              child: SingleChildScrollView(
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
                      // Color Section ........................
                      10.heightBox,
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: 'Color'.text.color(textfieldGrey).make(),
                              ),
                              Row(
                                children: List.generate(
                                    3,
                                    (index) => VxBox()
                                        .roundedFull
                                        .margin(EdgeInsets.symmetric(
                                          horizontal: 4,
                                        ))
                                        .color(Vx.randomPrimaryColor)
                                        .size(40, 40)
                                        .make()),
                              )
                            ],
                          ).box.padding(EdgeInsets.all(8)).make(),

                          // Quantity Row .......................
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: 'Quantity:'
                                    .text
                                    .color(textfieldGrey)
                                    .make(),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.remove)),
                                  '0'.text.size(16).color(darkFontGrey).make(),
                                  IconButton(
                                      onPressed: () {}, icon: Icon(Icons.add)),
                                  '(0 Available)'
                                      .text
                                      .color(textfieldGrey)
                                      .make()
                                ],
                              )
                            ],
                          ).box.padding(EdgeInsets.all(8)).make(),

                          // Total Row .......................
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child:
                                    'Total:'.text.color(textfieldGrey).make(),
                              ),
                              '\$0.00'
                                  .text
                                  .color(redColor)
                                  .size(16)
                                  .bold
                                  .make(),
                            ],
                          ).box.padding(EdgeInsets.all(8)).make(),
                        ],
                      ).box.white.shadowSm.make(),

                      // Description Section ............................
                      10.heightBox,
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: 'Description'
                            .text
                            .color(darkFontGrey)
                            .size(15)
                            .fontFamily(semibold)
                            .make(),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child:
                            'This is a dummy Item and Dummy Desciption here. is a dummy Item and Dummy Desciption here...'
                                .text
                                .color(darkFontGrey)
                                .make(),
                      ),

                      // Buttons Section ............................
                      ListView(
                        shrinkWrap: true,
                        primary: false,
                        children: List.generate(
                            itemDetailButtonsList.length,
                            (index) => ListTile(
                                  title: '${itemDetailButtonsList[index]}'
                                      .text
                                      .fontFamily(semibold)
                                      .color(darkFontGrey)
                                      .make(),
                                  trailing: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.arrow_forward)),
                                )),
                      ),
                      10.heightBox,
                      // Products may like Section
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: productSyoumaylike.text
                            .fontFamily(bold)
                            .size(16)
                            .color(darkFontGrey)
                            .make(),
                      ),

                      // home icreen Featured products ...............
                      10.heightBox,
                      SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            6,
                            (index) => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  imgP1,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                                10.heightBox,
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
                                .margin(EdgeInsets.symmetric(
                                  horizontal: 6,
                                ))
                                .padding(EdgeInsets.all(8))
                                .make(),
                          ),
                        ),
                      )
                    ],
                  ),
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
