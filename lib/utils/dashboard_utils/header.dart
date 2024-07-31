import 'package:fitness_dashboard/constant/constant.dart';
import 'package:fitness_dashboard/utils/reponsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      if (!Responsive.isDesktop(context))
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: Icon(
              Icons.menu,
              color: Colors.grey,
              size: 30,
            ),
          ),
        ),
      if (!Responsive.isMobile(context))
        Expanded(
          child: Container(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: cardBackgroundColor,
              ),
            ),
          ),
        ),
      if (Responsive.isMobile(context))
        Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
                size: 25,
              ),
              onPressed: () {},
            ),
            InkWell(
              onTap: () => Scaffold.of(context).openEndDrawer(),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 15, // Adjust the radius to fit your needs
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/profile.jpg",
                    width:
                        40, // Match this to twice the radius for a perfect fit
                    height:
                        40, // Match this to twice the radius for a perfect fit
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        )
    ]);
  }
}
