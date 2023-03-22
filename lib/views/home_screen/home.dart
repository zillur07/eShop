import 'package:eshop_app/controllers/home_controller.dart';
import 'package:eshop_app/views/cart_screen/cart_screen.dart';
import 'package:eshop_app/views/category_screen/category_screen.dart';
import 'package:eshop_app/views/home_screen/home_screen.dart';
import 'package:eshop_app/views/profile_screen/profile_screen.dart';

import '../../consts/consts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // init Home Controller
    final controller = Get.put(HomeController());
    //.......................................

    // Nave Item Icon and Text
    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: account),
    ];
    //.......................

    // Nav Body Page
    var navBody = [
      HomeScreen(),
      CategoryScreen(),
      CartScreen(),
      ProfileScreen(),
    ];
    //...........................

    return Scaffold(
      body: Obx(
        () => Column(
          children: [
            Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: TextStyle(fontFamily: semibold),
          backgroundColor: whiteColor,
          items: navbarItem,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
