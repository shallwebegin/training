import 'package:flutter/material.dart';
import 'package:training/week2/stateful/model/user.dart';
import 'package:training/week2/stateless/home_detail.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key, required this.user, this.onPressed});

  final User user;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(user.imageUrl),
        ),
        title: Text(user.title),
        subtitle: Text(user.description),
        trailing: const Icon(Icons.arrow_right),
        onTap: onPressed,
      ),
    );
  }
}
