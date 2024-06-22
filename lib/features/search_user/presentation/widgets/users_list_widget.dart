import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_user_search/core/app_ui/app_ui.dart';
import 'package:github_user_search/features/search_user/presentation/bloc/search_users_bloc.dart';
import 'package:github_user_search/features/search_user/presentation/widgets/user_card_widget.dart';

class UsersListWidget extends StatefulWidget {
  const UsersListWidget({super.key});

  @override
  State<UsersListWidget> createState() => _UsersListWidgetState();
}

class _UsersListWidgetState extends State<UsersListWidget> {
  ScrollController? _controller;
  double _scrollPosition = 0.0;

  _scrollListener() {
    if (_controller!.offset >= _controller!.position.maxScrollExtent && !_controller!.position.outOfRange) {
      _scrollPosition = _controller!.offset;
      context.read<SearchUsersBloc>().add(
            const SearchUsersEvent.updateSearchUsers(),
          );
    }
  }

  @override
  void initState() {
    _controller = ScrollController()..addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _controller?.removeListener(_scrollListener);
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchUsersBloc, SearchUsersState>(
      listener: (context, state) {
        if (state.isSuccess) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _controller?.jumpTo(_scrollPosition);
          });
        }
      },
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
              controller: _controller,
              itemCount: usersList.length,
              itemBuilder: (context, index) {
                final user = usersList[index];
                return UserCardWidget(
                  user: user,
                  index: index,
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
