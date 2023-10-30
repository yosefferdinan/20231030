import 'package:flutter/material.dart';
import 'package:fluttercrud/controller/PetugasController.dart';
import 'package:get/get.dart';

class Show_Petugas extends StatefulWidget {
  const Show_Petugas({super.key});

  @override
  State<Show_Petugas> createState() => _Show_PetugasState();
}


class _Show_PetugasState extends State<Show_Petugas> {
  @override
  Widget build(BuildContext context) {
    PetugasController petugasController = Get.put(PetugasController());
    int index = Get.arguments["index"];
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
                Text("${petugasController.listtiga.value[index].username}"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Username :"),
                Text("${petugasController.listtiga.value[index].username}"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("telpon :"),
                Text("${petugasController.listtiga.value[index].telp}"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Level :"),
                Text("${petugasController.listtiga.value[index].level}"),
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
                    petugasController.destroyData(
                        "${petugasController.listtiga.value[index].username}");
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
