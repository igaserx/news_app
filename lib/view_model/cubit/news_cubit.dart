import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/models/news_model.dart';
import 'package:news/services/api_service.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());
  fetchNews(String category)async{
    emit(NewsLoading());
    try {
      final news = await ApiService().getNewsByCategory(category);
      emit(NewLoaded(news: news));
    } catch (e) {
      emit(NewsFailure(errMessage: e.toString()));
    }
  }
}
