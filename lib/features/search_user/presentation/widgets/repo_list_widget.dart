import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_user_search/features/search_user/presentation/bloc/repo_bloc.dart';
import 'package:github_user_search/features/search_user/presentation/widgets/repo_card_widget.dart';

class RepoListWidget extends StatelessWidget {
  const RepoListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RepoBloc, RepoState>(
      builder: (context, state) {
        final repos = state.reposList;
        return ListView.builder(
          itemCount: repos.length,
          itemBuilder: (context, index) {
            final repo = repos[index];
            return RepoCardWidget(
              repo: repo,
            );
          },
        );
      },
    );
  }
}
