import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      "first_name": "Cristian",
      "last_name": "Rojas",
      "email": "Cristian.rojas.d@outlook.com",
      "password": "123456",
      "role": 'Admin'
    };
    return Scaffold(
        appBar: AppBar(title: const Text("Inputs and Forms")),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del usuario',
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del usuario',
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Correo del usuario',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'password',
                    hintText: 'Password del usuario',
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  DropdownButtonFormField(
                    items: const [
                      DropdownMenuItem<String>(
                          value: 'Admin', child: Text("Admin")),
                      DropdownMenuItem<String>(
                          value: 'Superuser', child: Text("SuperUser")),
                      DropdownMenuItem<String>(
                          value: 'Developer', child: Text("Developer")),
                      DropdownMenuItem<String>(
                          value: 'Jr. Developer', child: Text("Jr. Developer")),
                    ],
                    onChanged: (value) {
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),
                  ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (!myFormKey.currentState!.validate()) {
                          print("Form no valido");
                          return;
                        }
                        print(formValues);
                      },
                      child: const SizedBox(
                          width: double.infinity,
                          child: Center(child: Text('Guardar'))))
                ],
              ),
            ),
          ),
        ));
  }
}
