part of 'news_cubit.dart';

@immutable
sealed class NewsState {}

final class NewsInitial extends NewsState {}
final class NewsLoading extends NewsState{}
final class NewLoaded extends NewsState{
  final List<NewsModel> news ;

  NewLoaded({required this.news});
}
final class NewsFailure extends NewsState{
  final String errMessage ;

  NewsFailure({required this.errMessage});
}
