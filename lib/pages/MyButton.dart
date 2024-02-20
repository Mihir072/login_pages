import 'package:flutter/material.dart';
import 'package:login_pages/config/colors.dart';

class MyButton extends StatelessWidget {
  final IconData icon;
  final String Btname;
  final VoidCallback ontap;
  const MyButton(
      {super.key,
      required this.icon,
      required this.Btname,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: btn,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            Text(
              Btname,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
