import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_user_search/features/search_user/presentation/bloc/search_users_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchUsersBloc, SearchUsersState>(builder: (context, state) {
      final users = state.usersList;
      return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  // sl<RemoteDataSource>().searchUsers('ztx');
                  context.read<SearchUsersBloc>().add(
                        SearchUsersEvent.searchUsers(query: 'ztx'),
                      );
                },
                icon: const Icon(Icons.download))
          ],
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return Text('Name: ${user.name}');
          },
        ),
      );
    });
  }
}
