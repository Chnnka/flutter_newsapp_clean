import 'package:dio/dio.dart';
import 'package:flutter_newsapp_clean/features/daily_news/data/data_sources/local/app_database.dart';
import 'package:flutter_newsapp_clean/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:flutter_newsapp_clean/features/daily_news/data/repository/article_repository_impl.dart';
import 'package:flutter_newsapp_clean/features/daily_news/domain/repository/article_repository.dart';
import 'package:flutter_newsapp_clean/features/daily_news/domain/usecases/get_article.dart';
import 'package:flutter_newsapp_clean/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependancies() async {
  final database =
      await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  sl.registerSingleton<AppDatabase>(database);

  //dio
  sl.registerSingleton<Dio>(Dio());

  //dependencies
  sl.registerSingleton<NewsApiService>(NewsApiService(sl()));
  sl.registerSingleton<ArticleRepository>(ArticleRepositoryImpl(sl(), sl()));

  //usecases
  sl.registerSingleton<GetArticleUseCase>(GetArticleUseCase(sl()));

  //blocs
  sl.registerFactory<RemoteArticlesBloc>(() => RemoteArticlesBloc(sl()));
}
