import 'package:flutter/material.dart';
import 'package:training/week2/stateful/model/user.dart';

class UserCard extends StatelessWidget {
  final User user;
  final VoidCallback? onPressed;
  const UserCard({super.key, required this.user, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
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
