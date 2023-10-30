import 'package:flutter/material.dart';
import 'package:fluttercrud/controller/petugascontroller.dart';
import 'package:get/get.dart';

class CreatePetugas extends StatefulWidget {
  const CreatePetugas({super.key});

  @override
  State<CreatePetugas> createState() => _CreateState();
}

class _CreateState extends State<CreatePetugas> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nama = TextEditingController();
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController telp = TextEditingController();
    TextEditingController level= TextEditingController();
    PetugasController petugasController = Get.put(PetugasController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Petugas'),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
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
             TextField(
              controller: level,
              decoration: const InputDecoration(
                label: Text('Level'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                petugasController.createData(nama.text,
                    username.text, password.text, telp.text, level.text);
                Get.toNamed("/Post_masyarakat");
              },
              child: const Text("Create"),
            ),
          ],
        ),
      ),
    );
  }
}
