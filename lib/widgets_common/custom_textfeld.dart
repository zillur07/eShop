import 'package:eshop_app/consts/consts.dart';

Widget customTextField({
  String? title,
  String? hint,
  controller,
  isPass,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.red600.fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
        controller: controller,
        obscureText: isPass,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              fontFamily: semibold,
              color: textfieldGrey,
            ),
            // isDense: true,
            fillColor: lightGrey,
            filled: true,
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
                //borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: redColor))),
      ),
      5.heightBox,
    ],
  );
}
