import 'package:dio/dio.dart';

import 'package:retrofit/http.dart';

import '../core/global.dart';
import '../infrastucture/DataModel/home_page_data_model/home_page_data_model.dart';

part 'NetworkConnect.g.dart';

@RestApi(baseUrl: BASE_URL)
abstract class NetworkConnect {
  factory NetworkConnect(Dio dio, {String baseUrl}) = _NetworkConnect;

  @GET('/discussed')
  Future<HomePageDataModel> getHomePage(
    @Header("X-Desidime-Client") String key,  
    @Field("per_page") String perPage,
    @Field("page") String page,

  );
 
}
