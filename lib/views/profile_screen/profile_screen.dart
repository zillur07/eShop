import 'package:eshop_app/consts/lists.dart';
import 'package:eshop_app/widgets_common/bg_wdget.dart';
import '../../consts/consts.dart';
import 'components/details_card.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          // Edit Profile Button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.edit,
                color: whiteColor,
              ).onTap(() {}),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Row(
              children: [
                Image.asset(
                  imgProfile2,
                  width: 80,
                  fit: BoxFit.cover,
                ).box.roundedFull.clip(Clip.antiAlias).make(),
                10.widthBox,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      'Eshal Fatima'.text.fontFamily(semibold).white.make(),
                      5.heightBox,
                      'customer@example.com'.text.size(12).white.make(),
                    ],
                  ),
                ),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(
                      color: whiteColor,
                    )),
                    onPressed: () {},
                    child: logout.text.fontFamily(semibold).white.make())
              ],
            ),
          ),
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              detailsCard(
                count: '00',
                title: 'In your cart',
                width: context.screenWidth / 3.4,
              ),
              detailsCard(
                count: '50',
                title: 'In your wishlist',
                width: context.screenWidth / 3.4,
              ),
              detailsCard(
                count: '08',
                title: 'Your orders',
                width: context.screenWidth / 3.4,
              ),
            ],
          ),

          // Buttons section
          10.heightBox,
          ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Divider(
                color: lightGrey,
              );
            },
            itemCount: profileButtonsList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Image.asset(
                  profileButtonIcon[index],
                  width: 22,
                ),
                title: profileButtonsList[index].text.make(),
              );
            },
          )
              .box
              .white
              .roundedSM
              .shadowSm
              .margin(EdgeInsets.symmetric(horizontal: 10, vertical: 15))
              .padding(EdgeInsets.symmetric(horizontal: 15))
              .make()
              .box
              .color(redColor)
              .make(),
        ],
      )),
    ));
  }
}
