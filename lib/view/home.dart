import 'package:flutter/material.dart';
import 'package:fluttercrud/view/list_masyarakat/create.dart';
import 'package:fluttercrud/view/list_masyarakat/post.dart';
import 'package:fluttercrud/view/list_petugas/createPetugas.dart';
import 'package:fluttercrud/view/list_petugas/post.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Utama',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 0, 130, 252),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Post(),
                      ),
                    );
                  },
                  child: Container(
                    width: 435.0,
                    height: 50.0,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromARGB(255, 252, 0, 155),
                    ),
                    child: const Center(
                      child: Text(
                        'Post Masyarakat',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Create(),
                      ),
                    );
                  },
                  child: Container(
                    width: 435.0,
                    height: 50.0,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromARGB(255, 118, 8, 128),
                    ),
                    child: const Center(
                      child: Text(
                        'Create Masyarakat',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  
                  
                ),
                
              ],
            ),
            //end masyarakat//

        //petugas//
              SizedBox(height: 70,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Post_masyarakat(),
                      ),
                    );
                  },
                  child: Container(
                    width: 435.0,
                    height: 50.0,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromARGB(255, 252, 0, 155),
                    ),
                    child: const Center(
                      child: Text(
                        'Post Petugas',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 15,),

             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const CreatePetugas(),
                      ),
                    );
                  },
                  child: Container(
                    width: 435.0,
                    height: 50.0,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromARGB(255, 118, 8, 128),
                    ),
                    child: const Center(
                      child: Text(
                        'Create Petugas',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  
                ),
                
              ],
            ),
            //end petugas//
            
            const SizedBox(
              height: 20,
            ),
            
          ],
        ),
      ),
    );
  }
}
