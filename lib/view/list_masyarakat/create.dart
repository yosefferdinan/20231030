import 'package:flutter/material.dart';
import 'package:fluttercrud/controller/masyarakatcontroller.dart';
import 'package:get/get.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nik = TextEditingController();
    TextEditingController nama = TextEditingController();
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController telp = TextEditingController();
    MasyarakatController masyarakatController = Get.put(MasyarakatController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Masyrakat'),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
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
              controller: password,
              decoration: const InputDecoration(
                label: Text('Password'),
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
                masyarakatController.createData(nik.text, nama.text,
                    username.text, password.text, telp.text);
                Get.toNamed("/post");
              },
              child: const Text("Create"),
            ),
          ],
        ),
      ),
    );
  }
}
