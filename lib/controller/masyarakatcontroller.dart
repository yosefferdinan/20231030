import 'dart:convert';
import 'package:fluttercrud/model/masyarakatmodel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class MasyarakatController extends GetxController {
  static final MasyarakatController _instance =
      MasyarakatController._internal();

  RxBool isloading = RxBool(false);

  factory MasyarakatController() {
    return _instance;
  }

  MasyarakatController._internal();

  Rx<List<MasyarakatModel>> listsatu = Rx<List<MasyarakatModel>>([]);

  RxInt show = RxInt(0);

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  getData() async {
    try {
      listsatu.value = [];
      isloading.value = true;
      var res = await http.get(Uri.parse('http://localhost:5000/masyarakats'));
      if (res.statusCode == 200) {
        isloading.value = false;
        final content = jsonDecode(res.body);

        for (Map<String, dynamic> i in content) {
          listsatu.value.add(MasyarakatModel.fromJson(i));
          print(listsatu.value.length);
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
        Uri.parse("http://localhost:5000/masyarakats"),
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
        Uri.parse("http://localhost:5000/masyarakats/${nik}"),
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
        Uri.parse("http://localhost:5000/masyarakats/${id}"),
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
