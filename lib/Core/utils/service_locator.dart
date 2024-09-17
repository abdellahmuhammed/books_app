import 'package:bookly_app/Core/utils/api_services.dart';
import 'package:bookly_app/Features/home/home_models/home_repo/HomeRepoImplement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

var gitIt = GetIt.instance;

void setupServiceLocator(){
  gitIt.registerSingleton<ApiServices>(ApiServices(Dio()));

  gitIt.registerSingleton<HomeRepoImplement>(HomeRepoImplement(gitIt.get<ApiServices>()));

}
