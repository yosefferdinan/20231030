import 'dart:convert';
import 'package:fluttercrud/model/petugasmodel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PetugasController extends GetxController {
  static final PetugasController _instance =
      PetugasController._internal();

  RxBool isloading = RxBool(false);

  factory PetugasController() {
    return _instance;
  }

  PetugasController._internal();

  Rx<List<PetugasModel>> listtiga = Rx<List<PetugasModel>>([]);

  RxInt show = RxInt(0);

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  getData() async {
    try {
      listtiga.value = [];
      isloading.value = true;
      var res = await http.get(Uri.parse('http://localhost:5000/petugass'));
      if (res.statusCode == 200) {
        isloading.value = false;
        final content = jsonDecode(res.body);

        for (Map<String, dynamic> i in content) {
          listtiga.value.add(PetugasModel.fromJson(i));
          // print(content);
        }
      }

    } catch (e) {
      print(e.toString());
    }
  }

  createData(String nik, String nama, String username, String password,
      String telp) async {
    try {
      isloading.value = true;
      var response = await http.post(
        Uri.parse("http://localhost:5000/petugass"),
        body: jsonEncode({
          "nik": nik,
          "nama": nama,
          "username": username,
          "password": password,
          "telp": telp,
        }),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      isloading.value = false;

      getData();
      if (response.statusCode == 201) {
        print("Data berhasil dibuat");
      } else {
        print("Gagal membuat data. Status code: ${response.body}");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  updateData(nik, String nama, String username, String telp) async {
    try {
      isloading.value = true;
      var response = await http.patch(
        Uri.parse("http://localhost:5000/petugass/${nik}"),
        body: jsonEncode({
          "nama": nama,
          "username": username,
          "telp": telp,
        }),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      isloading.value = false;

      getData();
      if (response.statusCode == 201) {
        print("Data berhasil dibuat");
      } else {
        print("Gagal membuat data. Status code: ${response.body}");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  destroyData(String? id) async {
    try {
      isloading.value = true;
      var response = await http.delete(
        Uri.parse("http://localhost:5000/petugass/${id}"),
      );
      isloading.value = false;

      getData();
      if (response.statusCode == 201) {
        print("Data berhasil dibuat");
      } else {
        print("Gagal membuat data. Status code: ${response.body}");
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
