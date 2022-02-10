import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:isence/ui/views/MainHomePage/addnew_courses.dart';
import 'package:isence/ui/views/MainHomePage/dashboard.dart';
import 'package:isence/ui/views/MainHomePage/home_screen.dart';
import 'package:isence/ui/views/auth/loginscreen.dart';



// Route Names
const String login = "/Login-Screen";
const String course_content = "/Course-Content";
const String dashboard = "/dashboard";
const String new_courses = "/New_Courses";




// Control our page route flow
List<GetPage> getPages = [
  GetPage(
    name: login,
    page: () => LoginScreen(),
    transition: Transition.cupertino,
  ),
 
  GetPage(
    name: course_content,
    page: () => HomeScreen(),
  ),
  GetPage(
    name: dashboard,
    page: () => Dashboard(),
  ),
   GetPage(
    name: new_courses,
    page: () => AddNewCources(),
  ),
  
];