

import 'package:flutter/material.dart';
import 'package:scorecounter/Real_page.dart';
import 'package:scorecounter/homepage.dart';
import 'package:scorecounter/settings.dart';

void main() {
  runApp( const  MyApp());
}
class  MyApp extends StatelessWidget {
   const MyApp({super.key});
   @override
     Widget build(BuildContext context) {
        
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
  home: 

     const  Homepage(),
    routes:{'/realpage':(context)=> const realPage(),
      '/settings':(context)=>const Settings(),
    
  }
    
);      

  
  
    
   
    
    
        
       
   
         }   
         } 

      

   
    
      
 