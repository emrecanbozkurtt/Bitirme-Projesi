import 'package:bitirme_projesi/blog/DetaySayfa.dart';
import 'package:bitirme_projesi/courses/kurs_sayfasi.dart';
import 'package:bitirme_projesi/profil/profile_page.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
          color: Color(0xFF292B37),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25)
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CoursePage()),
              );
            },
            child: const Icon(Icons.home, size: 35, color: Colors.white,),
          ),
          InkWell(
            onTap: (){},
            child: const Icon(Icons.category, size: 35, color: Colors.white,),
          ),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetaySayfa()),
              );
            },
            child: const Icon(Icons.favorite_border, size: 35, color: Colors.white,),
          ),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
            child: const Icon(Icons.person, size: 35, color: Colors.white,),
          )
        ],),
    );
  }
}
