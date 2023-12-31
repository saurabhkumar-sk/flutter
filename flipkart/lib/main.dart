import 'package:flutter/material.dart';
import 'package:my_first_app/providers/authantification_provider.dart';
import 'package:my_first_app/providers/consumer_cart_provider.dart';
import 'package:my_first_app/providers/user_provider.dart';
import 'package:my_first_app/todo_application/todo_screen.dart';
import 'package:provider/provider.dart';

final messangerkey = GlobalKey<ScaffoldMessengerState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // ChangeNotifierProvider(
        //   create: (context) => CountProvider(),
        // ChangeNotifierProvider(
        //   create: (context) => CountProvider(),
        //or
        MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartProvider()),
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => UserProvider()),
      ],
      child: MaterialApp(
        scaffoldMessengerKey: messangerkey,
        debugShowCheckedModeBanner: false,
        title: "Clone",
        theme: ThemeData(
          // fontFamily: 'RopaSans',
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.blue,
            iconTheme: IconThemeData(color: Colors.white),
          ),
        ),
        // home: const App(
        //   name: 'login',
        // ),
        // home: const StatefulWidgetScreen(),
        // home: const MyButtons(),
        // home: const WhatsAppLandingScreen(),
        // home: const WrapWidgetScreen(),
        // home: const CardWeidget(),
        // home: const TableScreen(),
        // home: const ListTileScreen(),
        // home: const AspectRatioScreen(),
        // home: const BaseLineScreen(),
        // home: const TonyStarkScreen(),
        // home: const FlutterSatTest(),
        // home: const GridViewScreen(),
        // home: const SilverAppBarScreen(),
        // home: const FbLandingScreen(),
        // home: const ConsumerProductScreen(),
        // home: const SelectorProductScreen(),
        // home: const LoginScreen(), //Post Api screen
        // home: const ApiUserScreen(),
        // home: const CounterScreenProvider(),
        // home: const CounterScreensPractice(),
        // home: const ButtonCircle(),
        // home: const RandomUserScreen(),
        // home: const ListScreen(),
        // home: const FormScreen(),
        // home: const ImagePickerScreen(),
        // home: const AdvanceWidgetScrreen(),
        // home: const RoatedBoxScreen(),
        // home: const PageViewScreen(),
        // home: const CustomPaintScreen(),
        // home: const ClipperScreen(),
        // home: const AdvanceMaterialWidget(),
        // home: const LocalStorageScreen(),
        home: const ToDoScreen(),
      ),
    );
  }
}
