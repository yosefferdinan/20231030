import 'package:flutter/material.dart';
import 'package:fluttercrud/controller/masyarakatcontroller.dart';
import 'package:get/get.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    MasyarakatController masyarakatController = Get.put(MasyarakatController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post masyarakat'),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 32, right: 32),
        child: Obx(
          () => masyarakatController.isloading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: masyarakatController.listsatu.value.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed("/show", arguments: {"index": index});
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text('${index + 1}'),
                        ),
                        title: Text(
                            '${masyarakatController.listsatu.value[index].nama}'),
                        subtitle: Text(
                            '${masyarakatController.listsatu.value[index].nik}'),
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
