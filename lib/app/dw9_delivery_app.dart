import 'package:dw9_delivery/app/core/ui/theme/theme_config.dart';
import 'package:dw9_delivery/app/pages/auth/login/login_route.dart';
import 'package:dw9_delivery/app/pages/auth/register/register_route.dart';
import 'package:dw9_delivery/app/pages/order/order_completed_page.dart';
import 'package:dw9_delivery/app/pages/order/order_router.dart';
import 'package:dw9_delivery/app/pages/product_detail/product_detail_router.dart';
import 'package:dw9_delivery/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'core/global/global_context.dart';
import 'core/provider/application_binding.dart';
import 'pages/home/home_router.dart';

class Dw9DeliveryApp extends StatelessWidget {
  final _navKey = GlobalKey<NavigatorState>();

  Dw9DeliveryApp({super.key}) {
    GlobalContext.i.navigatorKey = _navKey;
  }

  @override
  Widget build(BuildContext context) {
    return ApplicationBinding(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Delivery App',
        theme: ThemeConfig.theme,
        navigatorKey: _navKey,
        routes: {
          '/': (context) => const SplashPage(),
          '/home': (context) => HomeRouter.page,
          '/productDetail': (context) => ProductDetailRouter.page,
          '/auth/login': (context) => LoginRoute.page,
          '/auth/register': (context) => RegisterRoute.page,
          '/order': (context) => OrderRouter.page,
          '/order/completed': (context) => const OrderCompletedPage(),
        },
      ),
    );
  }
}
