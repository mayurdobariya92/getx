import 'package:flutter/material.dart';
import 'package:get/get.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    secModel s = Get.put(secModel());
    return Scaffold(
      body: GridView.builder(itemBuilder: (context, index) {
        return InkWell(onTap: () {
          s.changeValue(index);

        },child: Container(color: Colors.black12,
        child: Obx(() => Text("${s.l[index].value}")),margin: EdgeInsets.all(10),alignment: Alignment.center,),);

      },gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),itemCount: 9),
    );
  }
}

class secModel extends GetxController {

 // List<RxString>l=List.filled(9, "".obs);

  List<RxString>l = ["".obs,"".obs,"".obs,"".obs,"".obs,"".obs,"".obs,"".obs,"".obs,];

  void changeValue(int index) {
    l[index].value = "Hello";
    print(l);
  }


}
