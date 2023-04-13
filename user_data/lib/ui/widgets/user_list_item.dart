import 'dart:io';

import 'package:flutter/material.dart';

import 'package:user_data/data/models/user/user.dart';
import 'package:user_data/ui/widgets/user_list_item_card.dart';
import 'package:user_data/ui/widgets/user_list_item_popup.dart';

class UserListItem extends StatelessWidget {
  const UserListItem({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, right: 8, bottom: 20, left: 20),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: user.image != null && user.image != ''
                  ? Image.file(
                      File(user.image!),
                      fit: BoxFit.cover,
                    ).image
                  : null,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      textDirection: TextDirection.ltr,
                      text: TextSpan(
                        text: 'Имя: ',
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: user.name,
                            style: const TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4),
                    RichText(
                      textDirection: TextDirection.ltr,
                      text: TextSpan(
                        text: 'Фамилия: ',
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: user.surname,
                            style: const TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4),
                    RichText(
                      textDirection: TextDirection.ltr,
                      text: TextSpan(
                        text: 'Возраст: ',
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: user.age.toString(),
                            style: const TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4),
                    RichText(
                      textDirection: TextDirection.ltr,
                      text: TextSpan(
                        text: 'Телефон: ',
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: user.phone,
                            style: const TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    UserListItemCard(user: user),
                  ],
                ),
              ),
            ),
            UserListItemPopup(user: user),
          ],
        ),
      ),
    );
  }
}
