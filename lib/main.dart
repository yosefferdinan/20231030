import 'package:flutter/material.dart';
import 'package:fluttercrud/view/list_petugas/createPetugas.dart';
import 'package:fluttercrud/view/list_petugas/edit.dart';
import 'package:fluttercrud/view/list_petugas/post.dart';
import 'package:fluttercrud/view/show/show_Masyarakat.dart';
import 'package:fluttercrud/view/home.dart';
import 'package:fluttercrud/view/list_masyarakat/create.dart';
import 'package:fluttercrud/view/list_masyarakat/edit.dart';
import 'package:fluttercrud/view/list_masyarakat/post.dart';
import 'package:fluttercrud/view/show/show_Petugas.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const MyApp()),
        GetPage(name: "/post", page: () => const Post()),
        GetPage(name: "/create", page: () => const Create()),
        GetPage(name: "/show", page: () => const Show_Masyarakat()),
        GetPage(name: "/edit", page: () => const Edit()),
        GetPage(name: "/Post_masyarakat", page: () => const Post_masyarakat()),
        GetPage(name: "/CreatePetugas", page: () => const CreatePetugas()),
          GetPage(name: "/Edit_petugas", page: () => const Edit_petugas()),
          GetPage(name: "/Show_Petugas", page: () => const Show_Petugas()),
      ],
      debugShowCheckedModeBanner: false,
      title: 'CRUD',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
