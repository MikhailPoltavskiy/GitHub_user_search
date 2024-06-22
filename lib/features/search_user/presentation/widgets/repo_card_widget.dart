import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:github_user_search/core/app_ui/app_ui.dart';
import 'package:github_user_search/features/search_user/models/repo_entity.dart';

class RepoCardWidget extends StatelessWidget {
  const RepoCardWidget({
    super.key,
    required this.repo,
    required this.index,
  });

  final RepoEntity repo;
  final int index;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: width * 0.8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  repo.name,
                  style: AppTextStyles.title.copyWith(fontSize: 18, color: AppColors.blue),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        color: AppColors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Text(
                      repo.machineCode,
                      style: AppTextStyles.text.copyWith(fontSize: 12, color: AppColors.grey),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(repo.commitAt.toString()),
                  ],
                ),
                Text('Default branch: ${repo.defaultBranch}'),
                Text('forks: ${repo.forksCount.toString()}'),
                Text('stars: ${repo.starsCount.toString()}'),
                Text(
                  'description: ${repo.description}',
                ),
              ],
            ),
          ),
          Text((index + 1).toString()),
        ],
      ),
    );
  }
}
