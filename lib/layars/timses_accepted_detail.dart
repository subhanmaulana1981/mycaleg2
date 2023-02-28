import 'package:flutter/material.dart';

class TimsesAcceptedDetail extends StatefulWidget {
  const TimsesAcceptedDetail({Key? key}) : super(key: key);

  @override
  State<TimsesAcceptedDetail> createState() => _TimsesAcceptedDetailState();
}

class _TimsesAcceptedDetailState extends State<TimsesAcceptedDetail> {

  // list kecamatan
  final List<String> _listCurrentKecamatan = [
    "bojongmangu",
    "cibarusah",
    "cikarang pusat",
    "cikarang selatan",
    "serang baru",
    "setu",
  ];

  // form key
  final _formKey = GlobalKey<FormState>();

  // text field state
  String? _currentPartai;
  String? _currentCaleg;
  String? _currentProvinsi;
  String? _currentDapil;
  String? _currentKabupatenKota;
  final bool _isRequest = true;
  final bool _isAccepted = false;

  // error handling
  final String _currentError = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Timses | Accepted | Detail"),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Form(
          key: _formKey,
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
                  initialValue: _currentPartai,
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
                  initialValue: _currentCaleg,
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
                  initialValue: _currentProvinsi,
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
                  initialValue: _currentKabupatenKota,
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
                  initialValue: _currentDapil,
                  decoration: const InputDecoration(
                      labelText: "Daerah Pemilihan",
                      suffixIcon: Icon(Icons.area_chart_outlined)
                  ),
                  validator: (value) {
                    return (value!.isEmpty) ? "Dapil tidak ditemukan!" : null;
                  },
                ),

                ListView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: _listCurrentKecamatan.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: const Icon(Icons.location_city),
                        title: Text(_listCurrentKecamatan[index].toString()),
                        subtitle: const Text("Kecamatan"),
                      ),
                    );
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
                          Text("Ok"),
                          SizedBox(width: 10.0),
                          Icon(Icons.check_box),
                        ],
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
