import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_user_search/core/app_ui/app_ui.dart';
import 'package:github_user_search/features/search_user/models/user_entity.dart';
import 'package:github_user_search/features/search_user/presentation/bloc/repo_bloc.dart';
import 'package:github_user_search/features/search_user/presentation/pages/repos_page.dart';

class UserCardWidget extends StatelessWidget {
  const UserCardWidget({
    super.key,
    required this.user,
    required this.index,
  });

  final UserEntity user;
  final int index;

  @override
  Widget build(BuildContext context) {
    final imageSize = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () async {
        context.read<RepoBloc>().add(RepoEvent.fetchRepos(url: user.reposUrl));
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ReposPage(
              user: user,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.black,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: SizedBox(
                      width: imageSize * 0.3,
                      height: imageSize * 0.3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          user.avatarUrl,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            }
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes != null
                                    ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(minWidth: MediaQuery.of(context).size.width * 0.6),
                    child: Column(
                      children: [
                        _LineOfText(
                          label: null,
                          value: user.name,
                        ),
                        _LineOfText(
                          label: 'Followers: ',
                          value: user.followersCount ?? '0',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 15,
                  left: imageSize * 0.88,
                ),
                child: Text(
                  (index + 1).toString(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LineOfText extends StatelessWidget {
  const _LineOfText({
    required this.label,
    required this.value,
  });

  final String? label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label ?? '',
          style: AppTextStyles.subTitle,
        ),
        Text(
          value,
          style: AppTextStyles.text,
        ),
      ],
    );
  }
}
