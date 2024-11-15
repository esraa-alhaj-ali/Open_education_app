// // ignore_for_file: non_constant_identifier_names

// import 'package:flutter/material.dart';


// var phonecontroller = TextEditingController();
// List imageList = [
//   {"id": 1, "image_path": 'android/assets/MyCarouselSlider.png'},
//   {"id": 2, "image_path": 'android/assets/MyCarouselSlider.png'},
//   {"id": 3, "image_path": 'android/assets/MyCarouselSlider.png'},
//   {"id": 4, "image_path": 'android/assets/MyCarouselSlider.png'},
//   {"id": 5, "image_path": 'android/assets/fetures.png'},
// ];
// Widget reusableSizedBox(double heigh, double width) => SizedBox(
//       height: heigh,
//       width: width,
//     );

// Widget MyText(text, double sizetext, color, isbold) {
//   return Text(
//     text,
//     style: TextStyle(
//         color: color,
//         fontSize: sizetext,
//         fontWeight: isbold == true ? FontWeight.bold : null),
//     textAlign: TextAlign.center,
//   );
// }

// Widget reusableText({
//   void Function()? function,
//   required String text,
//   double fontsize = 24.0,
//   FontWeight fontWeight = FontWeight.w700,
//   required Color? color,
//   int maxlines = 1,
//   TextOverflow overflowtype = TextOverflow.ellipsis,
//   TextAlign? textAlign,
//   TextDirection? textDirection,
// }) =>
//     GestureDetector(
//       onTap: function,
//       child: Text(
//         text,
//         textAlign: textAlign,
//         textDirection: textDirection,
//         style: TextStyle(
//           fontWeight: fontWeight,
//           fontSize: fontsize,
//           color: color,
//         ),
//         maxLines: maxlines,
//         overflow: overflowtype,
//       ),
//     );

// Widget reausableMaterialButton({
//   required void Function()? function,
//   required double width,
//   required double height,
//   required String text,
//   required Color? color,
//   required Color? colortext,
// }) =>
//     Container(
//         width: width,
//         height: height,
//         decoration: BoxDecoration(
//           color: color,
//           borderRadius: BorderRadius.circular(8.0),
//         ),
//         child: MaterialButton(
//           onPressed: function,
//           child: Text(
//             text.toString(),
//             style: TextStyle(
//               fontWeight: null,
//               color: colortext,
//               fontSize: 16,
//             ),
//           ),
//         ));

// import 'package:flutter/material.dart';

// Widget reusableTextForm(
//         {required TextEditingController controller,
//         required TextInputType keyboardtype,
//         bool isvisible = false,
//         bool readonly = false,
//         double radius = 0.0,
//         void Function()? functionsuffix,
//         IconData? iconsuffix,
//         Icon? iconpreffix,
//         int maxlines = 1,
//         void Function()? ontap,
//         String? Function(String?)? validate,
//         String? hinttext,
//         required String LableText}) =>
//     TextFormField(
//       // textAlign: TextAlign.right,
//       controller: controller,
//       keyboardType: keyboardtype,
//       obscureText: isvisible,
//       maxLines: maxlines,
//       onTap: ontap,
//       readOnly: readonly,
//       decoration: InputDecoration(
//         alignLabelWithHint: true,
//         label: Text(LableText,
//             style: const TextStyle(color: Colors.black,)),
//         // hintTextDirection: TextDirection.rtl,
//         fillColor: Colors.white,
//         prefixIcon: iconpreffix,
//         enabled: true,
//         filled: true,
//         hintText: hinttext,
//         suffixIcon:
//             IconButton(onPressed: functionsuffix, icon: Icon(iconsuffix)),
//         border: OutlineInputBorder(
//           borderSide: const BorderSide(color: Colors.white),
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//       validator: validate,
//     );
// Widget defaultListTile({
//   required String? value,
//   required Widget? text,
//   required void Function(Object?)? function,
//   required List? list,
//   // required double? start
// }) =>
//     ListTile(
//       trailing: text,
//       leading: Container(
//         width: 200,
//         alignment: AlignmentDirectional.centerEnd,
//         decoration: BoxDecoration(
//             border: Border.all(),
//             borderRadius: BorderRadius.circular(5.0),
//             color: Colors.pink[50]),
//         child: DropdownButton<String>(
//           // padding: EdgeInsetsDirectional.only(start: start!),
//           isDense: true,
//           borderRadius: BorderRadius.circular(15),
//           style: const TextStyle(color: Colors.black),
//           dropdownColor: Colors.pink[50],
//           iconEnabledColor: Colors.grey,
//           elevation: 0,
//           // iconSize: 20.0,
//           // alignment: const AlignmentDirectional(20.0, 30.0),
//           // isExpanded: true,
//           value: value!,
//           items: list!
//               .map((e) => DropdownMenuItem<String>(
//                   // alignment: AlignmentDirectional(1, 0.0),
//                   enabled: true,
//                   // ignore: sort_child_properties_last
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Text(e),
//                     ],
//                   ),
//                   value: e))
//               .toList(),
//           onChanged: function!,
//         ),
//       ),
//     );
// Widget BuildDrower(context) => Drawer(
//       child: Center(
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
//                 reusableSizedBox(0, 50),
//                 const SizedBox(
//                   width: 94,
//                   height: 94,
//                   child: Image(
//                     image: AssetImage('android/assets/logo.png'),
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ],
//             ),
//             reusableText(
//                 function: () {},
//                 text: 'طلبات المراسلة',
//                 color: Colors.black,
//                 fontsize: 16),
//             const Spacer(),
//             reusableText(
//                 function: () {
//                   Navigator.push(
//                       context, MaterialPageRoute(builder: (context)));
//                 },
//                 text: 'عناويني الحالية',
//                 color: Colors.black,
//                 fontsize: 16),
//             const Spacer(),
//             reusableText(
//                 function: () {
//                   Navigator.push(
//                       context, MaterialPageRoute(builder: (context)));
//                 },
//                 text: 'اضافة عنوان جديد',
//                 color: Colors.black,
//                 fontsize: 16),
//             const Spacer(),
//             reusableText(
//                 function: () {
//                   Navigator.push(
//                       context, MaterialPageRoute(builder: (context)));
//                 },
//                 text: 'النقاط الخاصة بي',
//                 color: Colors.black,
//                 fontsize: 16),
//             const Spacer(),
//             reusableText(
//                 function: () {
//                   Navigator.push(
//                       context, MaterialPageRoute(builder: (context)));
//                 },
//                 text: 'أكواد الحسم',
//                 color: Colors.black,
//                 fontsize: 16),
//             const Spacer(),
//             reusableText(
//                 function: () {
//                   Navigator.push(
//                       context, MaterialPageRoute(builder: (context)));
//                 },
//                 text: 'أسعار الطباعة',
//                 color: Colors.black,
//                 fontsize: 16),
//             const Spacer(),
//             reusableText(
//                 function: () {
//                   Navigator.push(
//                       context, MaterialPageRoute(builder: (context)));
//                 },
//                 text: 'ميزات التطبيق',
//                 color: Colors.black,
//                 fontsize: 16),
//             const Spacer(),
//             reusableText(
//                 function: () {
//                   Navigator.push(
//                       context, MaterialPageRoute(builder: (context)));
//                 },
//                 text: 'سياسة الخصوصية والاستخدام',
//                 color: Colors.black,
//                 fontsize: 16),
//             const Spacer(),
//             reusableText(
//                 function: () {
//                   Navigator.push(
//                       context, MaterialPageRoute(builder: (context)));
//                 },
//                 text: 'من نحن',
//                 color: Colors.black,
//                 fontsize: 16),
//             const Spacer(),
//             reusableText(
//                 function: () {
//                   Navigator.pop(context);
//                   _showDialog(context);
//                 },
//                 text: 'حذف بيانات حسابي',
//                 color: Colors.black,
//                 fontsize: 16),
//             const Spacer(),
//             reusableText(
//                 function: () {},
//                 text: 'مشاركة التطبيق',
//                 color: Colors.black,
//                 fontsize: 16),
//             reusableSizedBox(20, 0),
//             SizedBox(
//               width: double.infinity,
//               height: 49,
//               child: Center(
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Image(
//                       image: AssetImage('android/assets/facebook.png'),
//                     ),
//                     reusableSizedBox(0, 5),
//                     const Image(
//                       image: AssetImage('android/assets/watsapp.png'),
//                     ),
//                     reusableSizedBox(0, 5),
//                     const Image(
//                       image: AssetImage('android/assets/telegram.png'),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             reusableSizedBox(40, 0),
//             const Spacer(),
//             reausableMaterialButton(
//                 function: () {},
//                 width: double.infinity,
//                 height: 60,
//                 text: 'تسجيل الخروج',
//                 color: Colors.red,
//                 colortext: Colors.black),
//           ],
//         ),
//       ),
//     );
// Future _showDialog(BuildContext context) {
//   return showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(30.0),
//             ),
//             title: Center(
//                 child: reusableText(
//                     text: "?هل انت متاكد من حذف حسابك",
//                     color: Colors.black,
//                     fontsize: 18)),
//             content: SingleChildScrollView(
//               child: Column(children: [
//                 reusableTextForm(
//                     controller: phonecontroller,
//                     keyboardtype: TextInputType.phone,
//                     hinttext: 'رقم الهاتف',
//                     LableText: 'رقم الهاتف'),
//                 reusableSizedBox(20.0, 0),
//                 reausableMaterialButton(
//                     function: () {},
//                     width: 382,
//                     height: 64.5,
//                     text: 'حذف',
//                     color: const Color(0xFFB7343D),
//                     colortext: Colors.white),
//                 reusableSizedBox(20.0, 0),
//                 reausableMaterialButton(
//                     function: () {},
//                     width: 382,
//                     height: 64.5,
//                     text: 'الغاء',
//                     color: Colors.amber,
//                     colortext: Colors.white),
//                 reusableSizedBox(20.0, 0),
//               ]),
//             ),
//           ));
// }
