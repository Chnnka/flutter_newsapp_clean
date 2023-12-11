import 'package:flutter_newsapp_clean/core/resources/data_state.dart';
import 'package:flutter_newsapp_clean/features/daily_news/domain/entities/article.dart';

abstract class ArticleRepository {
  ArticleRepository(Object object);

  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}
