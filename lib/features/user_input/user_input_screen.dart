import 'package:flutter/material.dart';

class UserInputScreen extends StatefulWidget {
  const UserInputScreen({super.key});

  @override
  State<UserInputScreen> createState() => _UserInputScreenState();
}

class _UserInputScreenState extends State<UserInputScreen> {
  final _fullNameController = TextEditingController();
  final _fullNameNode = FocusNode();
  final _emailController = TextEditingController();
  final _emailNode = FocusNode();
  final _passwordController = TextEditingController();
  final _passwordNode = FocusNode();
  final _ageController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User input"),
      ),
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Input your details",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _fullNameController,
                    focusNode: _fullNameNode,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        filled: true,
                        hintText: "eg Damisola",
                        label: const Text("Full name"),
                        fillColor: Colors.blue.withOpacity(.1),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.blue))),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// TextFormField(
//   textCapitalization: TextCapitalization.sentences,
//   keyboardType: TextInputType.name,
//   textInputAction: TextInputAction.newline,
//   style: const TextStyle(
//       color: Colors.red,
//       fontWeight: FontWeight.w600,
//       fontSize: 20),
//   inputFormatters: [
//     FilteringTextInputFormatter.digitsOnly,
//     FilteringTextInputFormatter.allow(
//         RegExp(r'["a - zA - Z0 - 9.;@"]'))
//   ],
//   decoration: InputDecoration(
//     hintText: "eg Damisola",
//     hintStyle: const TextStyle(
//         color: Colors.grey,
//         fontWeight: FontWeight.w400,
//         fontSize: 12),
//     label: const Text(
//       "Name",
//       style: TextStyle(
//           color: Colors.grey,
//           fontWeight: FontWeight.w500,
//           fontSize: 17),
//     ),
//     prefixIcon: Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [],
//     ),
//     suffix: Icon(Icons.ac_unit),
//     suffixIcon: Icon(Icons.access_alarm_rounded),
//     border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(12),
//         borderSide: const BorderSide(color: Colors.green)),
//     enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(12),
//         borderSide: const BorderSide(color: Colors.green)),
//     focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(12),
//         borderSide: const BorderSide(color: Colors.blueGrey)),
//     disabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(12),
//         borderSide: const BorderSide(color: Colors.red)),
//     errorBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(12),
//         borderSide: BorderSide(color: Colors.red.shade900)),
//     focusedErrorBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(12),
//         borderSide: BorderSide(color: Colors.yellowAccent)),
//   ),
//
//   // autofocus: false,
//   // readOnly: false,
//   obscureText: true,
//   obscuringCharacter: "****",
// ),
