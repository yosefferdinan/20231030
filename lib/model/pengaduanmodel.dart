class PengaduanModel {
  String? idPengaduan;
  String? tglPengaduan;
  String? nik;
  String? isiLaporan;
  String? foto;
  String? status;
  String? createdAt;
  String? updatedAt;

  PengaduanModel(
      {this.idPengaduan,
      this.tglPengaduan,
      this.nik,
      this.isiLaporan,
      this.foto,
      this.status,
      this.createdAt,
      this.updatedAt});

  PengaduanModel.fromJson(Map<String, dynamic> json) {
    idPengaduan = json['id_pengaduan'];
    tglPengaduan = json['tgl_pengaduan'];
    nik = json['nik'];
    isiLaporan = json['isi_laporan'];
    foto = json['foto'];
    status = json['status'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_pengaduan'] = this.idPengaduan;
    data['tgl_pengaduan'] = this.tglPengaduan;
    data['nik'] = this.nik;
    data['isi_laporan'] = this.isiLaporan;
    data['foto'] = this.foto;
    data['status'] = this.status;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}