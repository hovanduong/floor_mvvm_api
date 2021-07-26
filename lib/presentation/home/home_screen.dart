
import 'package:floor_ex/presentation/base/basewidget.dart';
import 'package:floor_ex/presentation/home/home_viewmodel.dart';
import 'package:floor_ex/resource/local/entity/a.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_viewmodel.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeViewModel>(
      viewModel: HomeViewModel(context: context),
      onViewModelReady: (viewModel) => viewModel..initData(),
      // child: context,

      builder: (context, viewModel, child) => _buildBody(context, viewModel),
    );
  }

  Widget _buildBody(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: viewModel.disPlayData(),
        builder: (BuildContext context, AsyncSnapshot<List<Ab>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (BuildContext context, int index) {
                // return Dismissible(
                //   direction: DismissDirection.endToStart,
                //   background: Container(
                //     color: Colors.red,
                //     alignment: Alignment.centerRight,
                //     padding: EdgeInsets.symmetric(horizontal: 10.0),
                //     child: Icon(Icons.delete_forever),
                //   ),
                //   key: ValueKey<int>(snapshot.data![index].id),
                //   // onDismissed: (DismissDirection direction) async {
                //   //   await this
                //   //       .database
                //   //       .userDAO
                //   //       .deleteUser(snapshot.data![index].id!);
                //   //   setState(() {
                //   //     snapshot.data!.remove(snapshot.data![index]);
                //   //   });
                //   // },
                //   child: Card(
                //       child: ListTile(
                //     contentPadding: EdgeInsets.all(8.0),
                //     title: Text(snapshot.data![index].name),
                //     subtitle: Text(snapshot.data![index].name.toString()),
                //   )),
                // );
                return Card(
                  child: ListTile(
                      title: Text(snapshot.data![index].name),
                      onTap: () async {}),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
