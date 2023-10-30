import 'package:flutter/material.dart';
import 'package:fluttercrud/controller/petugascontroller.dart';
import 'package:get/get.dart';

class Post_masyarakat extends StatefulWidget {
  const Post_masyarakat({super.key});

  @override
  State<Post_masyarakat> createState() => _PostState();
}

class _PostState extends State<Post_masyarakat> {
  @override
  Widget build(BuildContext context) {
    PetugasController petugasController = Get.put(PetugasController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Petugas'),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 32, right: 32),
        child: Obx(
          () => petugasController.isloading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: petugasController.listtiga.value.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        print(petugasController.listtiga.value);
                        Get.toNamed("/Show_Petugas", arguments: {"index": index});
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text('${index + 1}'),
                        ),
                        title: Text('${petugasController.listtiga.value[index].username}'),
                      ),
                    );
                  },
                ),           
        ),
      ),
    );
  }
}
