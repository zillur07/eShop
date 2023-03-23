import 'package:eshop_app/widgets_common/homeButtons.dart';

import '../../consts/consts.dart';
import '../../consts/lists.dart';
import 'components/featured_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenWidth,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(
                    Icons.search,
                  ),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchanything,
                  hintStyle: TextStyle(color: textfieldGrey)),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  VxSwiper.builder(
                      height: 135,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      itemCount: slidersList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          slidersList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(
                              horizontal: 5,
                            ))
                            .make();
                      }),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      2,
                      (index) => homeButtons(
                          height: context.screenHeight * 0.15,
                          width: context.safePercentWidth / 5.5,
                          icon: index == 0 ? icTodaysDeal : icFlashDeal,
                          title: index == 0 ? todayDeal : flashsale,
                          onPress: () {}),
                    ),
                  ),
                  10.heightBox,
                  VxSwiper.builder(
                      height: 135,
                      enlargeCenterPage: false,
                      autoPlay: false,
                      aspectRatio: 10 / 9,
                      itemCount: secondSlidersList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          secondSlidersList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(
                              horizontal: 2,
                            ))
                            .make();
                      }),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      3,
                      (index) => homeButtons(
                          height: context.screenHeight * 0.15,
                          width: context.screenWidth / 3.5,
                          icon: index == 0
                              ? icTopCategories
                              : index == 1
                                  ? icBrands
                                  : icTopSeller,
                          title: index == 0
                              ? topCategories
                              : index == 1
                                  ? brand
                                  : topSellers),
                    ),
                  ),

                  // Featured Categories
                  15.heightBox,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: featuredCategories.text
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .size(18)
                        .make(),
                  ),
                  15.heightBox,
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        3,
                        (index) => Column(
                          children: [
                            featureButton(
                              icon: featuredImages1[index],
                              title: freaturedTitles1[index],
                            ),
                            10.heightBox,
                            featureButton(
                              icon: featuredImages2[index],
                              title: freaturedTitles2[index],
                            ),
                          ],
                        ),
                      ).toList(),
                    ),
                  ),

                  // Freatued Product
                  20.heightBox,
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(color: redColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FeaturedProduct.text.white
                            .fontFamily(bold)
                            .size(18)
                            .make(),
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

                  // Third Swiper..............
                  10.heightBox,
                  VxSwiper.builder(
                      height: 135,
                      enlargeCenterPage: false,
                      autoPlay: true,
                      aspectRatio: 10 / 5,
                      itemCount: secondSlidersList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          secondSlidersList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(
                              horizontal: 2,
                            ))
                            .make();
                      }),

                  // All product list Section ...............
                  20.heightBox,
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      mainAxisExtent: 280,
                    ),
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imgP5,
                            height: 190,
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
                      ).box.white.roundedSM.padding(EdgeInsets.all(12)).make();
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
