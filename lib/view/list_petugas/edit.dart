import 'package:flutter/material.dart';
import 'package:fluttercrud/controller/petugascontroller.dart';
import 'package:get/get.dart';

class Edit_petugas extends StatefulWidget {
  const Edit_petugas({super.key});

  @override
  State<Edit_petugas> createState() => _EditState();
}

class _EditState extends State<Edit_petugas> {
  @override
  Widget build(BuildContext context) {
    int index = Get.arguments["index"];
    PetugasController petugasController = Get.put(PetugasController());
    TextEditingController nama = TextEditingController();
    TextEditingController username = TextEditingController();
    TextEditingController telp = TextEditingController();
    TextEditingController level= TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: nama,
              decoration: const InputDecoration(
                label: Text('Nama'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: username,
              decoration: const InputDecoration(
                label: Text('Username'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: telp,
              decoration: const InputDecoration(
                label: Text('Telp'),
              ),
            ),
            TextField(
              controller: telp,
              decoration: const InputDecoration(
                label: Text('Level'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                petugasController.updateData(
                    nama.text,
                    username.text,
                    telp.text,
                    level.text,);
                Get.toNamed("/");
              },
              child: const Text("Update"),
            ),
          ],
        ),
      ),
    );
  }
}
