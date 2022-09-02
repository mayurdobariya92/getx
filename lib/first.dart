import 'package:flutter/material.dart';
import 'package:get/get.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {

    Model m = Get.put(Model());

    return Scaffold(appBar: AppBar(),
    body: Column(children: [
      Obx(() => Text("${m.a.value}")),
      ElevatedButton(onPressed: () {
        m.Increment();
        print("Main ===${m.a.value}");
      }, child: Text("Increment")),
      ElevatedButton(onPressed: () {
        m.Decrement();
        print("Main ===${m.a.value}");
      }, child: Text("Decrement")),
    ],),
    );
  }
}

class Model extends GetxController{

  RxInt a = 0.obs;

  void Increment()
  {
    a.value = a.value+1;
    print(a);
  }

  void Decrement(){
    a.value = a.value-1;
    print(a);
  }

}
