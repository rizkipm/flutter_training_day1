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
    PageSlilverWidget()
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

