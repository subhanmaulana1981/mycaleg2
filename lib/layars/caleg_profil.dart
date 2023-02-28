import 'package:flutter/material.dart';

class CalegProfil extends StatefulWidget {
  const CalegProfil({Key? key}) : super(key: key);

  @override
  State<CalegProfil> createState() => _CalegProfilState();
}

class _CalegProfilState extends State<CalegProfil> {

  // form key
  final _formKey = GlobalKey<FormState>();

  // list partai
  final List<String> _listPartai = [
    "pan",
    "pbb",
    "buruh",
    "pdip",
    "demokrat",
    "garuda",
    "gelora",
    "gerindra",
    "golkar",
    "hanura",
    "pks",
    "pkb",
    "pkn",
    "nasdem",
    "perindo",
    "ppp",
    "psi",
  ];

  // list dapil
  final List<String> _listDapil = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
  ];

  // list provinsi
  final List<String> _listProvinsi = [
    "jawa barat",
  ];

  // list kabupaten | kotamadya
  final List<String> _listKabupatenKota = [
    "kabupaten bekasi",
    "kotamadya bekasi",
  ];

  // list kecamatan
  final List<String> _listKecamatan = [
    "bojongmangu",
    "cibarusah",
    "cikarang pusat",
    "cikarang selatan",
    "serang baru",
    "setu",
    "cibitung",
    "cikarang barat",
    "tambun selatan",
    "babelan",
    "tambun utara",
    "tambelang",
    "sukawangi",
    "taruma jaya",
    "kedung waringin",
    "pebayuran",
    "sukatani",
    "sukakarya",
    "muara gembong",
    "cikarang utara",
    "karang bahagia",
    "cikarang timur"
  ];

  // form field states
  String? _currentPartai;
  String? _currentDapil;
  String? _currentNamaDisplay;
  String? _currentProvinsi;
  String? _currentKabupatenKotamadya;
  String? _currentKecamatan;

  /*List<String> _listCurrentKecamatan = [
    "bojongmangu",
    "cibarusah",
    "cikarang pusat",
    "cikarang selatan",
    "serang baru",
    "setu",
  ];*/

  List<String> _listCurrentKecamatan = [];

  // String? _currentErrorKecamatan;
  String _currentError = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Profil Caleg"),
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

                // nama lengkap
                TextFormField(
                  initialValue: _currentNamaDisplay,
                  decoration: const InputDecoration(
                    labelText: "Nama lengkap",
                    hintText: "Masukkan nama lengkap!",
                    suffixIcon: Icon(Icons.person),
                  ),
                  validator: (value) {
                    return (value!.isEmpty) ? "Harap isi nama!" : null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _currentNamaDisplay = value;
                    });
                  },
                ),

                // partai
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: "Partai",
                    hintText: "Pilih partai"
                  ),
                  validator: (value) {
                    return (value == null) ? "Harap pilih parta!" : null;
                  },
                  value: _currentPartai,
                  items: _listPartai.map<DropdownMenuItem<String>>((String partai) {
                    return DropdownMenuItem<String>(
                      value: partai,
                      child: Text(partai),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _currentPartai = value!;
                    });
                  },
                ),

                // dapil
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: "Dapil",
                    hintText: "Pilih dapil",
                  ),
                  validator: (value) {
                    return (value == null) ? "Harap pilih dapil!" : null;
                  },
                  value: _currentDapil,
                  items: _listDapil.map<DropdownMenuItem<String>>((String dapil) {
                    return DropdownMenuItem<String>(
                      value: dapil,
                      child: Text(dapil),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _currentDapil = value!;
                    });
                  }
                ),

                // provinsi
                DropdownButtonFormField(
                  decoration: const InputDecoration(
                    labelText: "Provinsi",
                    hintText: "Pilih provinsi"
                  ),
                  validator: (value) {
                    return (value == null) ? "Pilih provinsi!" : null;
                  },
                  value: _currentProvinsi,
                  items: _listProvinsi.map<DropdownMenuItem<String>>((String provinsi) {
                    return DropdownMenuItem(
                      value: provinsi,
                      child: Text(provinsi),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _currentProvinsi = value!;
                    });
                  }
                ),

                // kabupaten atau kota
                DropdownButtonFormField(
                  decoration: const InputDecoration(
                    labelText: "Kabupaten / Kotamadya",
                    hintText: "Pilih kabupaten / kotamadya"
                  ),
                  validator: (value) {
                    return (value == null) ? "Pilih kabupaten / kotamadya!" : null;
                  },
                  value: _currentKabupatenKotamadya,
                  items: _listKabupatenKota.map<DropdownMenuItem<String>>((String kabupatenKota) {
                    return DropdownMenuItem(
                      value: kabupatenKota,
                      child: Text(kabupatenKota),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _currentKabupatenKotamadya = value!;
                    });
                  },
                ),

                // kecamatan
                DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      labelText: "Kecamatan",
                      hintText: "Tambah kecamatan",
                    ),
                    validator: (value) {
                      return (value == null) ? "Harap tambah kecamatan!" : null;
                    },
                    value: _currentKecamatan,
                    items: _listKecamatan.map<DropdownMenuItem<String>>((String kecamatan) {
                      return DropdownMenuItem(
                        value: kecamatan,
                        child: Text(kecamatan),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _currentKecamatan = value!;
                      });
                    }
                ),
                ElevatedButton(
                  onPressed: () {
                    _listCurrentKecamatan.add(_currentKecamatan.toString());
                    setState(() {
                      _listCurrentKecamatan = _listCurrentKecamatan;
                    });
                    // print(_listCurrentKecamatan);
                  },
                  child: Row(
                    children: const <Widget>[
                      Text("Tambah Kecamatan"),
                      SizedBox(width: 10.0),
                      Icon(Icons.area_chart_outlined),
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: _listCurrentKecamatan.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_listCurrentKecamatan[index].toString()),
                    );
                  },
                ),

                // button simpan
                ButtonBar(
                  alignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        if(_formKey.currentState!.validate()) {
                          try {

                          } catch(error) {
                            setState(() {
                              _currentError = error.toString();
                            });

                          } finally {
                            Navigator.of(context).pop();

                          }
                        }
                      },
                      child: Row(
                        children: const <Widget>[
                          Text("Simpan"),
                          SizedBox(width: 10.0),
                          Icon(Icons.save),
                        ],
                      ),
                    ),
                  ],
                ),

                // text error
                Text(
                  _currentError,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
