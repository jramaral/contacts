
import 'package:flutter/material.dart';

import '../../models/contact.model.dart';

class EditorContactView extends StatelessWidget {
  final ContactModel? model;

  const EditorContactView({Key? key, this.model}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: model == null ? const Text("Novo Contato") : const Text("Editar Contato"),
        centerTitle: true,
       // backgroundColor: Colors.transparent,
       // elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                initialValue: model?.name,
                onSaved: (val) {
                  model?.name = val;
                },
              ),
              TextFormField(
                initialValue: model?.phone,
                onSaved: (val) {
                  model?.phone = val;
                },
              ),
              TextFormField(
                initialValue: model?.email,
                onSaved: (val) {
                  model?.email = val;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child:  TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.save,
                    color: Theme.of(context).secondaryHeaderColor,
                  ),
                  label: Text(
                    "Salvar",
                    style: TextStyle(
                      color: Theme.of(context).secondaryHeaderColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
