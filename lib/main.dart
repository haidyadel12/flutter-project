import 'package:flutter/material.dart';
import 'package:scanner/pages/loading.dart';
import 'package:scanner/pages/login.dart';
import 'package:scanner/pages/sign.dart';
import 'package:scanner/pages/home.dart';
import 'package:scanner/pages/info.dart';
import 'package:scanner/pages/sitting.dart';
import 'package:scanner/pages/splash_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://ayjknqftcihwwhgemtpj.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF5amtucWZ0Y2lod3doZ2VtdHBqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDYwMjIxODAsImV4cCI6MjAyMTU5ODE4MH0.euhqgnQgHIE1TRdnS98_rGhWAEL79TXinlglpLcWQlI',
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/loading',
    routes: {
      '/home': (context) => Home(),
      '/loading': (context) => loading(),
      '/sign': (context) => sign(),
      '/info': (context) => info(),
      '/login': (context) => login(),
      '/sitting': (context) => sitting(),
      '/test': (context) => SplashPage(),
    },
  ));
}
final supabase = Supabase.instance.client;