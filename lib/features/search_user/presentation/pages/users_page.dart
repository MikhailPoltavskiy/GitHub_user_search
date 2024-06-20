import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_user_search/features/search_user/presentation/bloc/search_users_bloc.dart';
import 'package:github_user_search/features/search_user/presentation/widgets/users_list_widget.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: const UsersListWidget(),
    );
  }
}
