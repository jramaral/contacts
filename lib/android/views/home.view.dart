import 'package:contacts/android/views/editor-contact.view.dart';
import 'package:flutter/material.dart';

import 'details.view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  backgroundColor: Colors.transparent,
       //   elevation: 0,
          title: const Text("Meus Contatos",
           //   style: Theme.of(context).textTheme.titleLarge
          ),
          centerTitle: true,
          leading: TextButton(
            onPressed: () {},
            style: const ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(
                Colors.white
              )
            ),
            child: const Icon(Icons.search),
          )),
      body: ListView(
        children: [
          ListTile(
              leading: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(48),
                  image: const DecorationImage(
                    image: NetworkImage("https://avatars.githubusercontent.com/u/8399743?v=4"),
                  )
                  ),
                ),
              title: const Text("JOSE ROBERTO"),
              subtitle: const Text("67 99897-0827"),
              trailing: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailsView(),
                    ),
                  );
                },
                child: const Icon(
                    Icons.chat
                ),
              ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const EditorContactView(),
            ),
          );
        },
        child: const Icon(
          Icons.add
        ),

      ),
    );
  }
}
