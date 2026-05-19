import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training_day1/pages/page_flex_list.dart';
import 'package:google_fonts/google_fonts.dart';

class PageMaterialDesign extends StatelessWidget {
  const PageMaterialDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Design',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // brightness: Brightness.dark,

        //thypograpgy
        textTheme: GoogleFonts.poppinsTextTheme(),
        //app bar theme
        appBarTheme: AppBarTheme(
          centerTitle: true,
          scrolledUnderElevation: 0,
        ),
      ),

      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // brightness: Brightness.dark,
      ),

      themeMode: ThemeMode.system, //ngikut dari sistem nya
      home:  PageContentMaterial(),
    );
  }
}

class PageContentMaterial extends StatefulWidget {
  const PageContentMaterial({super.key});

  @override
  State<PageContentMaterial> createState() => _PageContentMaterialState();
}

class _PageContentMaterialState extends State<PageContentMaterial> {


  int _selectedIndex = 0;

  static const List<Widget> _pages = [
    PageListVertical(),
    PageFlexList(),
    PageButtonMaterial()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),

      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        indicatorColor: Theme.of(context).colorScheme.secondaryContainer,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.list),
            label: 'List',
          ),
          NavigationDestination(
            icon: Icon(Icons.grid_view),
            label: 'Grid',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],

      ),
    );

  }
}

class PageButtonMaterial extends StatelessWidget {
  const PageButtonMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Elevated Button'),
            ),
            SizedBox(height: 10,),
            OutlinedButton(
              onPressed: () {},
              child: Text('Outlined Button'),
            ),
            SizedBox(height: 10,),
            TextButton(
              onPressed: () {},
              child: Text('Text Button'),
            ),
            SizedBox(height: 10,),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
            ),
            SizedBox(height: 10,),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.fourteen_mp),
            ),
            SizedBox(height: 10,),
            FilledButton(onPressed: () {  }, child: Text('Filled Button'),),
            SizedBox(height: 10,),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.camera),
              label: Text('Outlined Button Icon'),
            ),
            SizedBox(height: 10,),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.browse_gallery),
              label: Text('Text Button Icon'),
            ),
            SizedBox(height: 10,),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.escalator),
              label: Text('Elevated Button Icon'),
            ),
            SizedBox(height: 10,),
            FilledButton.icon(
              onPressed: () {},
              icon: Icon(Icons.gamepad),
              label: Text('Filled Button Icon'),
            ),

      ]
        ),
      ),
    );
  }
}




