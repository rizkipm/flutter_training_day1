import 'package:flutter/material.dart';

class PageFlexList extends StatelessWidget {
  const PageFlexList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Flexibel List'),
      ),

      body: Center(
        child: Container(
          margin: EdgeInsets.all(32),
          decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          child: ListView(
            shrinkWrap:
                true, //untuk buat lebih flexibel dan menyesuaikan widget
            children: [
              ListTile(title: Text('Item 1')),
              ListTile(title: Text('Item 2')),
              ListTile(title: Text('Item 3')),
              ListTile(title: Text('Item 4')),
              ListTile(title: Text('Item 5')),
              ListTile(title: Text('Item 6')),
              ListTile(title: Text('Item 1')),
              ListTile(title: Text('Item 2')),
              Row(
                children: [
                  Flexible(
                    flex: 4,
                    fit: FlexFit.loose,
                    child: Text(
                      'Teks Panjang yang bisa wrap',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),

                  SizedBox(width: 10),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Press This Button'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageListVertical extends StatelessWidget {
  const PageListVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Listview Vertical'),
      ),
      //listview builder
      //listview separated
      // body: ListView(
      //   padding: EdgeInsets.all(16),
      //   children: [
      //     ListTile(title: Text('Item 1'),),
      //     ListTile(title: Text('Item 2'),),
      //   ],
      // ),

      //gridview default
      body: GridView.count(
        crossAxisCount: 2, //2 kolom
        crossAxisSpacing: 12, //jarak horizontal antar cell
        mainAxisSpacing: 12, //jarak vertical antar cell
        childAspectRatio: 0.75, //rasio width dan height untuk setiap cell
        padding: EdgeInsets.all(16),
        children: [
          Container(height: 200, width: 200, color: Colors.green),
          Container(height: 200, width: 200, color: Colors.red),
          Container(height: 200, width: 200, color: Colors.blue),
          Container(height: 200, width: 200, color: Colors.orange),
        ],
      ),
    );
  }
}

class PageSlilverWidget extends StatefulWidget {
  const PageSlilverWidget({super.key});

  @override
  State<PageSlilverWidget> createState() => _PageSlilverWidgetState();
}

class _PageSlilverWidgetState extends State<PageSlilverWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true, //tetap terlihat ketika di collapse
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Page Sliver Widget'),
              background: Image.network(
                'https://png.pngtree.com/thumb_back/fh260/background/20211110/pngtree-latar-foto-estetik-polos-image_915537.png',
                fit: BoxFit.cover,
              ),
            ),
          ),

          //konten statis
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Card(color: Colors.orange, child: Text("Widget 1")),
                  Container(height: 200, width: 200, color: Colors.green),
                  Container(height: 200, width: 200, color: Colors.red),
                  Container(height: 200, width: 200, color: Colors.blue),
                  Container(height: 200, width: 200, color: Colors.orange),
                ],
              ),
            ),
          ),
        ],
      ),

      //header sticky section
    );
  }
}
