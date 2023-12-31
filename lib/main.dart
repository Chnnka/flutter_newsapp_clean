import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_newsapp_clean/config/theme/app_themes.dart';
import 'package:flutter_newsapp_clean/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:flutter_newsapp_clean/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:flutter_newsapp_clean/features/daily_news/presentation/pages/home/daily_news.dart';
import 'package:flutter_newsapp_clean/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependancies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>(
      create: (context) => sl()..add(const GetArticles()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: theme(),
        home: const DailyNews(),
      ),
    );
  }
}
