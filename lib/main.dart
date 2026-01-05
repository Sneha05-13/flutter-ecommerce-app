
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'app.dart';


//entry point of flutter app
void main() async  {
   WidgetsFlutterBinding.ensureInitialized();

   await Supabase.initialize(
    url: 'https://zagsdirmepbezwwwdqxs.supabase.co',   //Supabase project URL
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InphZ3NkaXJtZXBiZXp3d3dkcXhzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Njc1MjIyNDUsImV4cCI6MjA4MzA5ODI0NX0.2rFdpGxyhyPk46vfuN6T-ogI3fBs4tXbEyRxV1KDoys',  // Supabase anon
   );

  

  runApp(const App());
}

