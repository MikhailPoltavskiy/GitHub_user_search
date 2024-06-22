import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_user_search/core/app_ui/app_ui.dart';
import 'package:github_user_search/features/search_user/presentation/bloc/repo_bloc.dart';
import 'package:github_user_search/features/search_user/presentation/widgets/repo_card_widget.dart';

class RepoListWidget extends StatefulWidget {
  const RepoListWidget({
    super.key,
  });

  @override
  State<RepoListWidget> createState() => _RepoListWidgetState();
}

class _RepoListWidgetState extends State<RepoListWidget> {
  ScrollController? _controller;
  double _scrollPosition = 0.0;

  _scrollListener() {
    if (_controller!.offset >= _controller!.position.maxScrollExtent && !_controller!.position.outOfRange) {
      _scrollPosition = _controller!.offset;
      context.read<RepoBloc>().add(
            const RepoEvent.updateRepos(),
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
    return BlocConsumer<RepoBloc, RepoState>(
      listener: (context, state) {
        if (state.isSuccess) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _controller?.jumpTo(_scrollPosition);
          });
        }
      },
      builder: (context, state) {
        final reposList = state.reposList;

        return Stack(
          children: [
            ListView.separated(
              controller: _controller,
              separatorBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(
                    color: AppColors.blue,
                  ),
                );
              },
              itemCount: reposList.length,
              itemBuilder: (context, index) {
                final repo = reposList[index];

                return RepoCardWidget(
                  repo: repo,
                  index: index,
                );
              },
            ),
            if (state.isFailure)
              const Center(
                child: Text('Failed to load repos'),
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
