import 'package:flutter_dotenv/flutter_dotenv.dart';

class EndPoints {
 static const String baserUrl = "https://newsapi.org/v2/";
 static const String endPointCategory = "everything?";
 static const String endPointTrend = "top-headlines?";
 static final String? apiKey = dotenv.env["NEWS_API_KEY"];
 


}

class ApiKeys { 
 static const String  image = "urlToImage";
 static const String  title = "title";
 static const String  subTitle = "description";
 static const String  url = "url";
}