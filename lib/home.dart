import 'package:demoproject/widgets/homeappbar.dart';
import 'package:demoproject/widgets/userlist.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Image.asset('assets/Vector6.png')
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            HomeAppBar(),
            UserList(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffF42A41),
        elevation: 0,
        onPressed: (){},
        child: const Icon(Icons.house,
            color: Colors.white),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.grid_view,
                    size:30,color: Color(0xffF42A41),
                ),
            ),
            BottomNavigationBarItem(label: '', icon: Icon(Icons.calendar_month_outlined,
                    size:30,color: Color(0xffF42A41),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
