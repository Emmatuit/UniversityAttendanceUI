
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constant.dart';
import '../responsive.dart';


class Responsive1login extends StatefulWidget {
  const Responsive1login({
    super.key,
    required this.width,
    required this.height,
    
    });

    final double width;
    final double height;
   

  @override
  State<Responsive1login> createState() => _Responsive1loginState();
}

class _Responsive1loginState extends State<Responsive1login> {

   final _formKey = GlobalKey<FormState>();
  bool showLoginForm = true;
  //===========================================================================

  final TextEditingController UserName= TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void initState() {
    super.initState();
     // Attach Cookie manager
  }




  //===============================================================//

  void toggleForm(){
    setState(() {
      showLoginForm = !showLoginForm;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Responsive(
      mobile: buildMobileLayout(context),
      desktop: buildDesktopLayout(context),
       tablet: buildTabletLayout(context)
     );
  }


Widget buildTabletLayout(BuildContext context){
  double height =  MediaQueryUtil.screenHeight(context);
    double width = MediaQueryUtil.screenWidth(context);
  return Scaffold(
      backgroundColor: kDefaultIconDarkColor,
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height:height,
              width: width,
              color: kDarkBlackColor
            
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              height: MediaQueryUtil.screenHeight(context),
              width: MediaQueryUtil.screenWidth(context),
              color: Colors.white,
              child: buildMobileLayout(context),
        
            ),
          ),
        ],
      ),
    );
}

Widget buildDesktopLayout(BuildContext context){
  double height =  MediaQueryUtil.screenHeight(context);
    double width = MediaQueryUtil.screenWidth(context);
  return Scaffold(
      backgroundColor: kDefaultIconDarkColor,
      body: Row(
        children: [
          Expanded(
            child: Container(
              height:height,
              width: width,
              color: kDarkBlackColor
            
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQueryUtil.screenHeight(context),
              width: MediaQueryUtil.screenWidth(context),
              color: Colors.white,
              child: buildMobileLayout(context),
        
            ),
          ),
        ],
      ),
    );
  }


Widget buildMobileLayout(BuildContext context){
  double height =  MediaQueryUtil.screenHeight(context);
    double width = MediaQueryUtil.screenWidth(context);
  double  Welcome = Responsive.isMobile(context) ? width * 0.04  : Responsive.isTablet(context)? width * 0.03: width * 0.02;
      double  Hintext =  Responsive.isMobile(context)? width * 0.03 : Responsive.isTablet(context)? width * 0.02 : width * 0.01;
      double  login =  Responsive.isMobile(context) ? width * 0.03 : Responsive.isTablet(context)? width * 0.02:  width * 0.01;
  return Scaffold(
    backgroundColor: kDefaultIconLightColor,
    body:  Form(
       key: _formKey,
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.1, vertical: height * 0.06),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: CircularSvgContainer(svgPath: 'assets/2jM7WcYGBw1tPvFbhvdRpwQT01g.svg', size: height * 0.16),
                ),
                SizedBox(height:  height * 0.01,),
                Text('Welcome Back', style: TextStyle(fontSize: Welcome, fontWeight: FontWeight.w600, color: Colors.black),),
                SizedBox(height: height * 0.01,),
                Text('Please Login to your account', style: TextStyle(fontSize: login,  color: Colors.grey),),
                 SizedBox(height: height * 0.05,),
                 //=========================================================================//
                  TextFormField(
                   controller: UserName,
                  validator: (value) => value!.isEmpty ? 'Please enter Username' : null,
                  decoration: InputDecoration(hintText: "UserName", hintStyle: TextStyle(color: Colors.grey, fontSize: Hintext), border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                ),
                //=====================================================//
                SizedBox(height: height * 0.03,),
                 TextFormField(
                   controller: password,
                  validator: (value) => value!.isEmpty ? 'Please enter password' : null,
                  decoration: InputDecoration(hintText: "Password", hintStyle: TextStyle(color: Colors.grey, fontSize: Hintext), border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                ),
                 SizedBox(height: height * 0.05,),
                 Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: height * 0.001,
                        width: width,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: Center(child: Text('Or Login With' , style: TextStyle(fontSize: Hintext, color: Colors.grey),))),
                    Expanded(
                      child: Container(
                         height: height * 0.001,
                        width: width,
                        color: Colors.black,
                      ),
                    )
                  ],
                 ),
                  SizedBox(height: height * 0.06,),
                SizedBox(
                  width: width,
                  height: height * 0.06,
                  child: ElevatedButton(
                  onPressed: () => Container(),
                  style: ElevatedButton.styleFrom(backgroundColor: kDefaultIconDarkColor, shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(20))),
                  child: Text('Login', style:TextStyle(fontSize: login, color: Colors.white, ),)),
                ),
                 SizedBox(height: height * 0.05,),
            
              ],
            ),
          ),
      ),
    ),
  );
  
}
}
//=================================================================================================//
class CircularSvgContainer extends StatelessWidget {
  final String svgPath;
  final double size;

  CircularSvgContainer({required this.svgPath, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color:  Color.fromARGB(66, 135, 130, 130),
            blurRadius: 5.0,
            spreadRadius: 1.0,
            offset: Offset(2, 5),
          ),
        ],
      ),
      child: ClipOval(
        child: SvgPicture.asset(
          svgPath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}