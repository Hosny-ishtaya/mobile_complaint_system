import 'package:covid_project/signin_page.dart';
import 'package:flutter/material.dart';
import '../pageone.dart';
import 'Drawer_item.dart';
import '../compalint/Complaint.dart';

class Ndrawer extends StatelessWidget {
  const Ndrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: maincolor,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 60, 19, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(
                height: 17,
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 17,
              ),
              Draweritem(
                name: 'Profile',
                icon: Icons.people,
                onPressed: () => onItempressd(context, index: 0),
              ),
              const SizedBox(
                height: 20,
              ),
              Draweritem(
                name: 'Complaint',
                icon: Icons.comment,
                onPressed: () => onItempressd(context, index: 1),
              ),
              const SizedBox(
                height: 20,
              ),
              Draweritem(
                name: 'Rate Company',
                icon: Icons.rate_review,
                onPressed: () => onItempressd(context, index: 2),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Draweritem(
                name: 'Logout',
                icon: Icons.logout,
                onPressed: () => onItempressd(context, index: 3),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onItempressd(BuildContext context, {required int index}) {
    Navigator.pop(context);
    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Complaint()));
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignIn()));
        break;
      default:
        Navigator.pop(context);
        break;
    }
  }

  Widget headerWidget() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 27,
          backgroundImage: AssetImage("images/hosny.png"),
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          children: [
            Text(
              "hosny ishtaya",
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "hosnyish812@gmail.com.",
              style: TextStyle(
                  fontSize: 7.5,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
