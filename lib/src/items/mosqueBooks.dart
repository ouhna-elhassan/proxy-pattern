import 'package:flutter/material.dart';


List<String> listTypes = [
  'تفسير القران',
  'السنة النبوية',
  'تفسير الحديث',
  'عقيدة وتوحيد',
  'أصول الفقه',
  'فقه السلوك',
  'فقه العبادات',
  'سنن الصحابة'
];
List<int> count = [
  7,
  3,
  5,
  11,
  5,
  6,
  9,
  3,
];

Container mosqueBooksList(BuildContext context, int i){
  return Container(
    height: 77,
    margin: EdgeInsets.only(bottom: 17, right: 0),
    decoration: BoxDecoration(
                color: Colors.white,
                boxShadow:const [
              BoxShadow(
                color: Color.fromARGB(255, 228, 228, 228),
                offset: Offset(3, 3),
                blurRadius: 7
              )
            ],
            border: Border.all(color: Color.fromARGB(255, 134, 51, 12), ),
            borderRadius: BorderRadius.circular(13)
              ),
    child: ListTile(
      leading: Icon(
        Icons.menu_book_sharp,
        color: Color.fromARGB(255, 142, 51, 10),
        size: 31,
      ),
      title: Text(
        listTypes[i],
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 19
        ),
      ),
      subtitle: Text(
        '${count[i]} :متوفر ',
         style: TextStyle(
          fontSize: 15
        ),
      ),
    ),
  );
}