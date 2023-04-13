import 'package:flutter/material.dart';

import 'package:user_data/data/models/user/user.dart';
import 'package:user_data/ui/widgets/user_list_item.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key, required this.users}) : super(key: key);
  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(
        height: 1,
        thickness: 1,
      ),
      itemCount: users.length,
      itemBuilder: (context, index) => UserListItem(user: users[index]),
    );
  }
}
