import 'package:supermall/layout/index.dart';
import 'package:supermall/pages/address/index.dart';
import 'package:supermall/pages/forgot/index.dart';
import 'package:supermall/pages/login/index.dart';
import 'package:supermall/pages/order/index.dart';
import 'package:supermall/pages/rewards/index.dart';
import 'package:supermall/pages/sign_up/index.dart';
import 'package:supermall/pages/verification/index.dart';
import 'package:supermall/welcome/index.dart';

// LoginPage
var routes = {
  '/welcome': (context) => WelcomePage(),
  '/login': (context) => LoginPage(),
  '/layout': (context) => LayoutPage(),
  '/sign_up': (context) => SignUpPage(),
  '/forgot': (context) => ForgotPage(),
  '/verification': (context) => VerificationPage(),
  '/order': (context) => OrderPage(),
  '/rewards': (context) => RewardsPage(),
  '/address': (context) => AddressPage(),
};
