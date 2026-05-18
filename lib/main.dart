import 'package:flutter/material.dart';
import 'package:flutter_training_day1/pages/page_flex_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const PageMain(),
    );
  }
}

class PageMain extends StatelessWidget {
  const PageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Training PNP Apps'),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            //kasih jarak ke atas
            SizedBox(height: 10), //vertical

            // SizedBox(width: 10,), //horizontal
            Container(
              height: 100,
              padding: EdgeInsets.all(12), //kasih jarak atas bawah, kiri kanan
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue.shade200),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Center(child: Text('Hello Selamat Datang')),
            ),
            SizedBox(height: 10,),
            Wrap(
              spacing: 8, // jarak horizontal antar item
              runSpacing: 8, // jarak vertical antar baris
              alignment: WrapAlignment.start, //start ==kiri
              children: [
                InkWell(
                  onTap: (){
                    //navigator untuk pindah
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> PageFlexList()));
                  },
                  child: Chip(label: Text('Flexibel List'),
                    backgroundColor: Colors.orange.withOpacity(0.5),
                  ),
                ),
                InkWell(
                  onTap: (){
                    //navigator untuk pindah
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> PageListVertical()));
                  },
                  child: Chip(label: Text('Listview Vertical'),
                    backgroundColor: Colors.blue.withOpacity(0.5),
                  ),
                ),
                InkWell(
                  onTap: (){
                    //navigator untuk pindah
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> PageSlilverWidget()));
                  },
                  child: Chip(label: Text('Kategori 3'),
                    backgroundColor: Colors.green.withOpacity(0.5),
                  ),
                ),

              ],
            ),
            SizedBox(height: 10),
            //Stack : widget yg bertumpuk
            Stack(
              fit: StackFit.loose, //ukurannya akan menyesuaikan
              alignment: AlignmentGeometry.center,
              children: [
                Image.network(
                  'https://png.pngtree.com/thumb_back/fh260/background/20211110/pngtree-latar-foto-estetik-polos-image_915537.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                //overlay gelap di atas gambar
                Container(color: Colors.black.withOpacity(0.4)),

                //teks di posisi tertentu menggunakan positioned
                const Positioned(
                  bottom: 16,
                  left: 16,
                  right: 16,
                  child: Text(
                    'Caption dibawah gambar',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),

                //badge atau icon di pojok kanan atas
                const Positioned(
                  top: 8,
                  right: 8,
                  child: Badge(label: Text('Baru'), backgroundColor: Color(0xFF2196F3), textColor: Colors.orange,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
