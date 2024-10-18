import 'package:flutter/material.dart';

import 'package:go_router_tutorial_app/models/user.dart';
import 'package:modular_ui/modular_ui.dart';

class ProfilePage extends StatelessWidget {
  final User user;

  const ProfilePage({
    super.key,
    required this.user,
  });

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Profile",
        ),
      ),
      body: Center(
        child: MUIProfileCard(
          name: user.name,
          image: Image.network(
            user.imageURL,
          ),
          designation: user.role,
        ),
      ),
    );
  }
}
