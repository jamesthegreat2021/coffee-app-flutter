import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/other_pages.dart';
import 'package:flutter_application_1/profile_page.dart';
import 'package:flutter_application_1/settings.dart';



void main(){
  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,

    home: FirstPage(),
    
    routes: {


      '/thepage': (context) => HomePage(), 

      '/settingspage':  (context) => Settings(), 

      '/profilepage': (context) {
        return ProfilePage();
      },
      '/otherpage': (context) {
        return OtherPage();
      }

   

    },
  ));
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
 int _selectedIndex = 0;

 final List _pages = [
    HomePage(),
    ProfilePage(), 
    Settings(),
  ]; 

  void changeIndex(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('the first page'),),
      body: _pages[_selectedIndex],
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.favorite, size: 48)), 
            ListTile(
              leading: Icon(Icons.home),
              title: Text('H O M E'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/thepage');
              },
            ), 
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
              onTap: (){
                Navigator.pop(context); 
                Navigator.pushNamed(context, '/settingspage');
              },

            ),
            ListTile(
              leading: Icon(Icons.arrow_forward),
              title: Text('O T H E R  P A G E S'),
              onTap: (){

                Navigator.pop(context); 
                Navigator.pushNamed(context, '/otherpage'); 

              },
              
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: changeIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ],
      ),
    );
  }
}