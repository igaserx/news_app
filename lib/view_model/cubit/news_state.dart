part of 'news_cubit.dart';

@immutable
sealed class NewsState {}

final class NewsInitial extends NewsState {}
final class NewsLoading extends NewsState{}
final class NewsLoaded extends NewsState{
  final List<NewsModel> news ;
  final List<NewsModel> trendNews ;

  NewsLoaded( {required this.news , required this.trendNews,});
}
final class NewsFailure extends NewsState{
  final String errMessage ;

  NewsFailure({required this.errMessage});
}
