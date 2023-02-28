import 'package:flutter/material.dart';
import 'package:proj_caleg/komponens/loading.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key, required this.toggleView}) : super(key: key);

  final Function toggleView;

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  // text field state
  String _currentEmail = "";
  String _currentPassword = "";
  late String _currentError;
  
  // password text visibility
  bool _isPwdVisible = true;

  @override
  Widget build(BuildContext context) {
    return (_isLoading) ? const Loading() : Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Masuk"),
        actions: <Widget>[
          Row(
            children: <Widget>[
              const Text("Daftar di sini"),
              IconButton(
                onPressed: () {
                  widget.toggleView();
                },
                icon: const Icon(Icons.app_registration),
                tooltip: "Daftar",
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
                      return value!.isEmpty ? "Masukkan email!" : null;
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

                  // button simpan
                  ButtonBar(
                    alignment: MainAxisAlignment.end,
                    children: <ElevatedButton>[
                      ElevatedButton(
                        onPressed: () {
                          if(_formKey.currentState!.validate()) {
                            setState(() {
                              _isLoading = true;
                            });

                            /*print(_currentEmail);
                            print(_currentPassword);*/
                          }
                        },
                        child: Row(
                          children: const <Widget>[
                            Text("Masuk"),
                            SizedBox(width: 10),
                            Icon(Icons.login),
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
