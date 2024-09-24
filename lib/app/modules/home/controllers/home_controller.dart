import 'package:get/get.dart';
import 'package:movie_app/app/modules/home/views/subviews/movie_view.dart';
import 'package:movie_app/app/modules/home/views/subviews/search_view.dart';
import 'package:movie_app/app/modules/home/views/subviews/show_view.dart';
import 'package:movie_app/app/modules/home/views/subviews/watchlist_view.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final count = 0.obs;
  var currentIndex= 0.obs;
  var subviews = [
    MovieView(),
    ShowView(),
    SearchView(),
    WatchlistView()
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
