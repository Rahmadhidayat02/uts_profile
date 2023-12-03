import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Header(),
              Identfy(),
              Menus(), 
              DarkMode(),
              SettingWidget(),
              ListTile(
                contentPadding: EdgeInsets.only(top: 200, left: 150),
                leading: Icon(Icons.logout,
                color: Colors.red,),
                title: Text('Logout',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),),
              )
          ],),
        )),
    );
  }
}

class SettingWidget extends StatelessWidget {
  const SettingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      contentPadding: EdgeInsets.only(left: 20, right: 10),
      leading: Padding(
        padding: EdgeInsets.only(left: 5),
        child: Icon(Icons.settings_outlined,
        size: 30,),
      ), // Icon di sebelah kiri
      title: Padding(
        padding: EdgeInsets.only(left: 5),
        child: Text('Settings',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),),
      ), // Teks di sebelah kanan icon
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}

class DarkMode extends StatefulWidget {
  const DarkMode({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DarkModeState createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {
  bool lights = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Switch(
            value: lights,
            onChanged: (bool newValue) {
              setState(() {
                lights = newValue;
                // Tambahkan logika sesuai kebutuhan untuk mengubah tema aplikasi ke dark atau light
              });
            },
          ),
          const Text('Dark Mode',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),), // Tulisan di sebelah kanan
        ],
      ),
    );
  }
}

class Menus extends StatelessWidget {
  const Menus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            margin: const EdgeInsets.only(left: 20),
            child: const Row( 
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Icon(
                Icons.badge_outlined,
                size: 20,
                color: Colors.black,
              ),
              Padding(padding: 
              EdgeInsets.only(right: 10)),
              Text('Uniid',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),),
              ],
              ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, top: 10),
          child: const Row( 
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Icon(
              Icons.mail_outlined,
              size: 20,
              color: Colors.black,
            ),
            Padding(padding: 
            EdgeInsets.only(right: 10)),
            Text('Rahmadhidayat@gmail.com',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),),
            ],
            ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, top: 10),
          child: const Row( 
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Icon(
              Icons.contacts_outlined,
              size: 20,
              color: Colors.black,
            ),
            Padding(padding: 
            EdgeInsets.only(right: 10)),
            Text('Nama Bergelar',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),),
            ],
            ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, top: 10),
          child: const Row( 
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Icon(
              Icons.home_outlined,
              size: 20,
              color: Colors.black,
            ),
            Padding(padding: 
            EdgeInsets.only(right: 10)),
            Text('Homebase',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),),
            ],
            ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, top: 10),
          child: const Row( 
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Icon(
              Icons.phone_outlined,
              size: 20,
              color: Colors.black,
            ),
            Padding(padding: 
            EdgeInsets.only(right: 10)),
            Text('081234567890',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            ),
            ],
            ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Divider(
            color: Color.fromARGB(96, 88, 88, 88),
            height: 10,
            thickness: 1,
          ),
        )
      ],
    );
  }
}

class Identfy extends StatelessWidget {
  const Identfy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          children: [
            SizedBox(
                height: 50,
                width: 120,                   
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama Lengkap',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15
            ),),
            Text('Mahasiswa')
          ],
        ),
      ],
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
    height: 60,
    child: Row(
      //crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.arrow_back),
        Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 40)),
              Text("Profile",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),)
            ] 
        ),
         Row(
            children: [
              Text("Edit Profile",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 11,
                color: Colors.blue,
              ),)
            ], 
        )
      ],
    ),
            );
  }
}