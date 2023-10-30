import 'package:flutter/material.dart';
import 'package:fluttercrud/controller/masyarakatcontroller.dart';
import 'package:get/get.dart';

class Show_Masyarakat extends StatefulWidget {
  const Show_Masyarakat({super.key});

  @override
  State<Show_Masyarakat> createState() => _Show_MasyarakatState();
}

class _Show_MasyarakatState extends State<Show_Masyarakat> {
  @override
  Widget build(BuildContext context) {
    int index = Get.arguments["index"];
    MasyarakatController masyarakatController = Get.put(MasyarakatController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Show'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Nama :"),
                Text("${masyarakatController.listsatu.value[index].nama}"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("NIK :"),
                Text("${masyarakatController.listsatu.value[index].nik}"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Username :"),
                Text("${masyarakatController.listsatu.value[index].username}"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("telpon :"),
                Text("${masyarakatController.listsatu.value[index].telp}"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed("/edit", arguments: {"index": index});
                  },
                  child: const Text("Edit"),
                ),
                ElevatedButton(
                  onPressed: () {
                    masyarakatController.destroyData(
                        "${masyarakatController.listsatu.value[index].nik}");
                    Get.toNamed("/");
                  },
                  child: const Text("Hapus"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
