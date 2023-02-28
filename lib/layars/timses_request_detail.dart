import 'package:flutter/material.dart';

class TimsesRequestDetail extends StatelessWidget {
  const TimsesRequestDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // form key
    final formKey = GlobalKey<FormState>();

    // text field state
    String? currentPartai;
    String? currentCaleg;
    String? currentProvinsi;
    String? currentDapil;
    String? currentKabupatenKota;
    List<String> listCurrentKecamatan;
    bool isRequest = true;
    bool isAccepted = false;

    // error handling
    String currentError = "";

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Request | Detail"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                // gambar profil
                Image.asset(
                  "assets/profile.png",
                  fit: BoxFit.fitWidth,
                  width: 128.0,
                ),

                // partai
                TextFormField(
                  readOnly: true,
                  initialValue: currentPartai,
                  decoration: const InputDecoration(
                    labelText: "Partai",
                    suffixIcon: Icon(Icons.flag),
                  ),
                  validator: (value) {
                    return (value!.isEmpty) ? "Partai tidak ditemukan!" : null;
                  },
                ),

                // caleg
                TextFormField(
                  readOnly: true,
                  initialValue: currentCaleg,
                  decoration: const InputDecoration(
                    labelText: "Caleg",
                    suffixIcon: Icon(Icons.person),
                  ),
                  validator: (value) {
                    return (value!.isEmpty) ? "Caleg tidak ditemukan!" : null;
                  },
                ),

                // provinsi
                TextFormField(
                  readOnly: true,
                  initialValue: currentProvinsi,
                  decoration: const InputDecoration(
                    labelText: "Provinsi",
                    suffixIcon: Icon(Icons.area_chart_outlined)
                  ),
                  validator: (value) {
                    return (value!.isEmpty) ? "Provinsi tidak ditemukan!" : null;
                  },
                ),

                // kabupaten | kotamadya
                TextFormField(
                  readOnly: true,
                  initialValue: currentKabupatenKota,
                  decoration: const InputDecoration(
                      labelText: "Kabupaten | Kota",
                      suffixIcon: Icon(Icons.area_chart_outlined)
                  ),
                  validator: (value) {
                    return (value!.isEmpty) ? "Kabupaten | Kota tidak ditemukan!" : null;
                  },
                ),

                // dapil
                TextFormField(
                  readOnly: true,
                  initialValue: currentDapil,
                  decoration: const InputDecoration(
                      labelText: "Daerah Pemilihan",
                      suffixIcon: Icon(Icons.area_chart_outlined)
                  ),
                  validator: (value) {
                    return (value!.isEmpty) ? "Dapil tidak ditemukan!" : null;
                  },
                ),

                // tombol penerimaan
                ButtonBar(
                  alignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: const <Widget>[
                          Text("Terima permintaan"),
                          SizedBox(width: 10.0),
                          Icon(Icons.check_box),
                        ],
                      ),
                    ),
                  ],
                ),

              ],
            ),
          )
        ),
      ),
    );
  }
}
