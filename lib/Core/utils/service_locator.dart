import 'package:bookly_app/Core/utils/api_services.dart';
import 'package:bookly_app/Features/home/home_models/home_repo/HomeRepoImplement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

// Create a singleton instance of GetIt for service location.
var gitIt = GetIt.instance;

/// Sets up the service locator for dependency injection.
/// Registers the necessary services and repositories.
void setupServiceLocator() {
  // Register the ApiServices as a singleton using Dio for HTTP requests.
  gitIt.registerSingleton<ApiServices>(ApiServices(Dio()));

  // Register the HomeRepoImplement as a singleton, providing it with the ApiServices instance.
  gitIt.registerSingleton<HomeRepoImplement>(HomeRepoImplement(gitIt.get<ApiServices>()));
}
