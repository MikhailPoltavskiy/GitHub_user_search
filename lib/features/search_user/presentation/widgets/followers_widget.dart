import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_user_search/core/app_ui/app_ui.dart';
import 'package:github_user_search/features/search_user/presentation/bloc/followers_cubit.dart';

class FollowersWidget extends StatelessWidget {
  const FollowersWidget({
    super.key,
    required this.followersUrl,
  });
  final String followersUrl;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FollowersCubit, Map<String, String>>(
      builder: (context, state) {
        final count = state[followersUrl] ?? '0';
        return Row(
          children: [
            Text(
              'Followers: ',
              style: AppTextStyles.subTitle,
            ),
            Text(
              count,
              style: AppTextStyles.text,
            ),
          ],
        );
      },
    );
  }
}
