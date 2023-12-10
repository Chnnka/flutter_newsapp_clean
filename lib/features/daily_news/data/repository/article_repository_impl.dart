import 'package:flutter_newsapp_clean/core/resources/data_state.dart';
import 'package:flutter_newsapp_clean/features/daily_news/domain/entities/article.dart';
import 'package:flutter_newsapp_clean/features/daily_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository{
  @override
  Future<DataState<List<ArticleEntity>>> getNewsArticles() {

    throw UnimplementedError();
  }

}