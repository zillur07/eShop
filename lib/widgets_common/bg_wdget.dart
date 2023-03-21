import '../consts/consts.dart';

Widget bgWidget({required Scaffold child}) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imgBackground),
        fit: BoxFit.cover,
      ),
    ),
    child: child,
  );
}
