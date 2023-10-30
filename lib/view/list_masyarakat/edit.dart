import 'package:flutter/material.dart';
import 'package:fluttercrud/controller/masyarakatcontroller.dart';
import 'package:get/get.dart';

class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    int index = Get.arguments["index"];
    MasyarakatController masyarakatController = Get.put(MasyarakatController());
    TextEditingController nik = TextEditingController();
    TextEditingController nama = TextEditingController();
    TextEditingController username = TextEditingController();
    TextEditingController telp = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: nik,
              decoration: const InputDecoration(
                label: Text('NIK'),
              ),
            ),
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
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                masyarakatController.updateData(
                    masyarakatController.listsatu.value[index].nik,
                    nama.text,
                    username.text,
                    telp.text);
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
