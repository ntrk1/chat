
import 'package:chat/models/user.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {

  RefreshController _refreshController = RefreshController(initialRefresh: false);


  final users = [
    User(online: false, name: 'name', email: 'email', uid: 'uid')
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Wasap'),
        elevation: 1,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            
          }, 
          icon: Icon(Icons.backspace_outlined),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Icon(Icons.check, color: Colors.green,),
            )
          ],
      ),
      body: SmartRefresher(
        controller: _refreshController,
        onRefresh: _loadUser(),
        header: WaterDropHeader(
          complete: Icon(Icons.check),
          waterDropColor: Colors.blue,
        ),
        enablePullDown: true,
        child: _listViewUser(),
        )
    );
  }

  ListView _listViewUser() {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      itemCount: users.length,
      itemBuilder: (context, index) {
        return _userListTile(users[index]);
      },
      separatorBuilder: (context, index) => Divider(), 
      );
  }

  ListTile _userListTile(User user) {
    return ListTile(
          title: Text(user.name),
          subtitle: Text(user.email),
          leading: CircleAvatar(
            child: Text(user.name.substring(0,2)),
          ),
          trailing: Icon(
            Icons.online_prediction,
            color: user.online ? Colors. green : Colors.red,
          ),
        );
  }

   _loadUser() async {
    await Future.delayed(Duration(seconds: 1));
    _refreshController.refreshCompleted();
   }
}