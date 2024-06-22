import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_user_search/core/app_ui/app_ui.dart';
import 'package:github_user_search/features/search_user/presentation/bloc/search_users_bloc.dart';
import 'package:github_user_search/features/search_user/presentation/widgets/user_card_widget.dart';

class UsersListWidget extends StatelessWidget {
  const UsersListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchUsersBloc, SearchUsersState>(
      builder: (context, state) {
        final usersList = state.usersList;

        if (!state.isLoading && usersList.isEmpty && !state.isFailure) {
          return Center(
            child: Text(
              'No users found.',
              style: AppTextStyles.subTitle,
            ),
          );
        }

        return Stack(
          children: [
            ListView.builder(
              itemCount: usersList.length,
              itemBuilder: (context, index) {
                final user = usersList[index];
                return UserCardWidget(
                  user: user,
                );
              },
            ),
            if (state.isFailure)
              const Center(
                child: Text('Failed to load users'),
              ),
            if (state.isLoading)
              const Center(
                child: CircularProgressIndicator(),
              )
          ],
        );
      },
    );
  }
}
