import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gozem_clone/features/home/users/user.dart';
import 'package:http/http.dart';

class UsersScreen extends StatefulWidget {
  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  void fetchUsers() async {
    Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/users");
    var response = await get(uri);
    //response.then((value) => users = value.body);
    var list = jsonDecode(response.body) as List;
    usersJson = list.map<User>((e) => convert(e)).toList();

    setState(() {});
  }

  @override
  void initState() {
    fetchUsers();
    super.initState();
  }

  List<User>? usersJson;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: usersJson == null
              ? CircularProgressIndicator()
              : ListView.builder(
                  itemBuilder: (context, index) {
                    User user = usersJson![index];
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text(user.id.toString()),
                      ),
                      title: Text(user.email),
                      subtitle: Text(user.name),
                      trailing: Icon(Icons.phone),
                    );
                  },
                  itemCount: usersJson!.length,
                )),
    );
  }
}
