import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:github_user_search/features/search_user/data/remote_data_source.dart';
import 'package:github_user_search/features/search_user/presentation/bloc/repo_bloc.dart';
import 'package:github_user_search/features/search_user/presentation/bloc/search_users_bloc.dart';
import 'package:github_user_search/features/search_user/presentation/pages/users_page.dart';
import 'package:github_user_search/service_locator.dart' as di;
import 'package:github_user_search/service_locator.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SearchUsersBloc>(
          create: (context) => sl<SearchUsersBloc>(),
        ),
        BlocProvider<RepoBloc>(
          create: (context) => sl<RepoBloc>(),
        )
      ],
      child: const MaterialApp(
        home: Scaffold(
          // appBar: AppBar(
          //   actions: [
          //     IconButton(
          //         onPressed: () {
          //           // sl<RemoteDataSource>().searchUsers('ztx');
          //           context.read<SearchUsersBloc>().add(
          //                 SearchUsersEvent.searchUsers(query: 'ztx1213'),
          //               );
          //         },
          //         icon: const Icon(Icons.download))
          //   ],
          // ),
          // body: Center(
          //   child: Text('Hello World! \n${dotenv.env['GitHub_token']}'),
          // ),
          body: UsersPage(),
        ),
      ),
    );
  }
}
