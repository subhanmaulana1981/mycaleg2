import 'package:flutter/material.dart';
import 'package:proj_caleg/komponens/loading.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key, required this.toggleView }) : super(key: key);

  final Function toggleView;

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  // otentikasi form
  final _formKey = GlobalKey<FormState>();

  // loading widget
  bool _isLoading = false;

  // text field state
  String _currentEmail = "";
  String _currentPassword = "";
  String _currentDisplayName = "";

  // error state
  final String _currentError = "";

  // password text visibility
  bool _isPwdVisible = true;

  @override
  Widget build(BuildContext context) {
    return (_isLoading) ? const Loading() : Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Daftar"),
        actions: <Widget>[
          Row(
            children: <Widget>[
              const Text("Masuk di sini"),
              IconButton(
                onPressed: () {
                  widget.toggleView();
                },
                icon: const Icon(Icons.login),
                tooltip: "Masuk",
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[

                // email
                TextFormField(
                  validator: (value) {
                    return (value!.isEmpty) ? "Masukkan email!" : null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _currentEmail = value;
                    });
                  },
                  decoration: const InputDecoration(
                    label: Text("Email"),
                    hintText: "Masukkan email",
                    suffixIcon: Icon(Icons.email),
                  ),
                ),

                // password
                TextFormField(
                  validator: (value) {
                    return (value!.length < 6) ? "Katakunci >6 karakter!" : null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _currentPassword = value;
                    });
                  },
                  obscureText: _isPwdVisible,
                  decoration: InputDecoration(
                    label: const Text("Password"),
                    hintText: "Minimal 8 karakter",
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isPwdVisible = !_isPwdVisible;
                        });
                      },
                      icon: (_isPwdVisible) ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                    ),
                  ),
                ),

                // display name
                TextFormField(
                  validator: (value) {
                    return (value!.isEmpty) ? "Masukkan nama tampilan!" : null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _currentDisplayName = value;
                    });
                  },
                  decoration: const InputDecoration(
                    label: Text("Nama tampilan"),
                    hintText: "Masukkan nama tampilan",
                    suffixIcon: Icon(Icons.person),
                  ),
                ),

                // button daftar
                ButtonBar(
                  alignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        if(_formKey.currentState!.validate()) {
                          setState(() {
                            _isLoading = true;
                          });

                          /*dynamic result;
                          if(result == null) {
                            setState(() {
                              _currentError = "Registrasi gagal, coba lagi!";
                              _isLoading = false;
                            });
                          }*/

                          /*print(_currentEmail);
                          print(_currentPassword);
                          print(_currentDisplayName);*/
                        }
                      },
                      child: Row(
                        children: const <Widget>[
                          Text("Daftar"),
                          SizedBox(width: 10.0),
                          Icon(Icons.app_registration),
                        ],
                      ),
                    ),
                  ],
                ),

                // error text
                Text(
                  _currentError,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 18.0,
                  ),
                ),

              ],
            ),
          )
        ),
      ),
    );
  }
}
