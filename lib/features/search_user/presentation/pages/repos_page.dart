import 'package:flutter/material.dart';
import 'package:github_user_search/features/search_user/presentation/widgets/repo_list_widget.dart';

class ReposPage extends StatelessWidget {
  const ReposPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const RepoListWidget(),
    );
  }
}
