import 'package:get/get.dart';

import '../modules/Dashboard/bindings/dashboard_binding.dart';
import '../modules/Dashboard/views/dashboard_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/orders/bindings/orders_binding.dart';
import '../modules/orders/views/orders_view.dart';
import '../modules/profile_details/bindings/profile_details_binding.dart';
import '../modules/profile_details/views/profile_details_view.dart';
import '../modules/shop/bindings/shop_binding.dart';
import '../modules/shop/views/add_shop_view.dart';
import '../modules/shop/views/shop_list.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SpalshScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_DETAILS,
      page: () => const ProfileDetailsView(),
      binding: ProfileDetailsBinding(),
    ),
    GetPage(
      name: _Paths.ADD_SHOP,
      page: () => const AddShopView(),
      binding: ShopBinding(),
    ),
    GetPage(
      name: _Paths.SHOP_LIST,
      page: () => const ShopList(),
      binding: ShopBinding(),
    ),
    GetPage(
      name: _Paths.ORDERS,
      page: () => const OrdersView(),
      binding: OrdersBinding(),
    ),
  ];
}
