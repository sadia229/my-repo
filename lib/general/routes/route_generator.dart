import 'package:flutter/material.dart';
import 'package:practice/apps/cart/screen/cart_page.dart';
import 'package:practice/apps/cart/screen/login_screen.dart';
import 'package:practice/apps/cart/screen/products_details.dart';
import 'package:practice/apps/cart/screen/products_view.dart';
import 'package:practice/apps/cart/screen/token_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final Map? arguments = settings.arguments as Map?;
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case '/product':
        return MaterialPageRoute(
          builder: (_) => const ProductsScreen(),
        );
      case '/dashboard':
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      case '/details':
        return MaterialPageRoute(
          builder: (_) => ProductsDetails(
            arguments!['productId'],
          ),
        );

      case '/tokenPage':
        return MaterialPageRoute(
          builder: (_) => TokenScreen(),
        );


      // case '/billCollection':
      //   return MaterialPageRoute(
      //     builder: (_) => const BillCollectionScreen(),
      //   );
      // case '/billDetails':
      //   return MaterialPageRoute(
      //     builder: (_) => const BillsDetails(),
      //   );
      // case '/cashTransfer':
      //   return MaterialPageRoute(
      //     builder: (_) => const CashTransferScreen(),
      //   );
      // case '/cashTransferDetails':
      //   return MaterialPageRoute(
      //     builder: (_) => const CashTransferDetails(),
      //   );
      // case '/complain':
      //   return MaterialPageRoute(
      //     builder: (_) => const ComplainScreen(),
      //   );
      // case '/expense':
      //   return MaterialPageRoute(
      //     builder: (_) => const ExpenseScreen(),
      //   );
      // case '/customer':
      //   return MaterialPageRoute(
      //     builder: (_) => const CustomerScreen(),
      //   );
      // case '/customerDetails':
      //   return MaterialPageRoute(
      //     builder: (_) => const CustomerDetails(),
      //   );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return const Scaffold(
          body: Center(
            child: Text('Page not found'),
          ),
        );
      },
    );
  }
}
