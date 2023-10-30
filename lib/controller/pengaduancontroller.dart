import 'package:fluttercrud/model/pengaduanmodel.dart';
import 'package:get/get.dart';

class PengaduanController extends GetxController {
  static final PengaduanController _instance = PengaduanController._internal();

  factory PengaduanController() {
    return _instance;
  }

  PengaduanController._internal();

  Rx<List<PengaduanModel>> listdua = Rx<List<PengaduanModel>>([]);

  
}
