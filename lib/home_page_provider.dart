
import 'package:flutter/cupertino.dart';

class HomePageProvider with ChangeNotifier{
   bool isEligible;
   String eligibilityMessage = '';

   void checkEligibility(int age){
     if(age >= 18){
       isEligible = true;
       eligibilityMessage="You are eligible";
       notifyListeners();
     }
     else{
       isEligible = false;
       eligibilityMessage="You are eligible";
       notifyListeners();
     }
   }

}