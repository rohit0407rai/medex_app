import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../models/riveAssets.dart';


class SideMenuTile extends StatelessWidget {
  const SideMenuTile({super.key, required this.menu, required this.press, required this.riveonInit, required this.isActive});
  final RiveAssets menu;
  final VoidCallback press;
  final ValueChanged<Artboard> riveonInit;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding:  EdgeInsets.only(left: 24),
          child:  Divider(color: Colors.white24,height: 1,),
        ),
        Stack(
          children: [
            AnimatedPositioned(
              curve: Curves.fastOutSlowIn,
              duration: const Duration(milliseconds: 300),
              height: 56,
              left: 0,
              width:isActive? 288:0,

              child: Container(decoration: const BoxDecoration(
                  color: Color(0xff6792FF),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),),
            ),
            ListTile(
              onTap: press,
              leading: SizedBox(
                height: 34,
                width: 34,
                child: RiveAnimation.asset(menu.src,artboard: menu.artboard,onInit:riveonInit),
              ),
              title: Text(menu.title, style: const TextStyle(color: Colors.white),),
            ),

          ],
        )
      ],
    );
  }
}
