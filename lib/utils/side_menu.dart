import 'package:fitness_dashboard/constant/constant.dart';
import 'package:fitness_dashboard/data/side_menu_data.dart';
import 'package:fitness_dashboard/models/menu_model.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 10),
      child: Container(
        child: ListView.builder(
          itemCount: data.menu.length,
          itemBuilder: (BuildContext context, int index) {
            return buildMenuBar(data, index);
          },
        ),
      ),
    );
  }

  Widget buildMenuBar(SideMenuData data, int index) {
    bool isSelected = selectedIndex == index;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: isSelected ? selectionColor : Colors.transparent,
          borderRadius: BorderRadius.circular(6)),
      child: GestureDetector(
        onTap: () {
          selectedIndex = index;
          setState(() {});
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
              child: Icon(
                data.menu[index].icons,
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
            Text(data.menu[index].title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  color: isSelected ? Colors.black : Colors.grey,
                )),
          ],
        ),
      ),
    );
  }
}
