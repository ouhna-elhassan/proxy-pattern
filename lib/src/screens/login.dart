import 'package:flutter/material.dart';
import 'package:proxy/src/bottomNavBar.dart';
import '../../servicesProxy/user.dart';
import 'package:provider/provider.dart';


class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  Container formField(TextEditingController controller){
    return Container(
      width: MediaQuery.of(context).size.width*1,
      height: 55,
      padding:const EdgeInsets.only(left: 7),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow:const [
          BoxShadow(
            color: Color.fromARGB(255, 214, 214, 214),
            offset: Offset(5, 5),
            blurRadius: 7
          )
        ],
        borderRadius: BorderRadius.circular(13)
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 243, 243),
      body: SafeArea(
        child: Padding(
          padding:const EdgeInsets.only(left: 27, top: 41, right: 27),
          child:SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 95),
                  width: 111,
                  height: 111,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 101, 133, 159),
                    image: DecorationImage(
                      image: ExactAssetImage('assets/bde.png'),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(111),
                    border: Border.all(
                      color: Color.fromARGB(255, 8, 60, 102),
                      width: 2
                    )
                  ),
                ),
                SizedBox(height: 53,),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 53,),
                      const Text(
                        'Email',
                        style: TextStyle(
                          color: Color.fromARGB(255, 8, 60, 102),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 7,),
                      formField(_email),
                      const SizedBox(height: 21,),
                      const Text(
                        'Password',
                        style: TextStyle(
                          color: Color.fromARGB(255, 8, 60, 102),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 7,),
                      formField(_password),
                      const SizedBox(height: 7,),
                      SizedBox(
                        width: 333,
                        child: TextButton(
                          onPressed: (){
                            User user = Provider.of<User>(context, listen: false);
                            user.status = false;
                            Navigator.pushReplacement(
                              context, 
                              MaterialPageRoute(builder: ((context) => Controller()))
                            );
                          }, 
                          child: const Text(
                            'Visit the app',
                            style: TextStyle(
                              color: Color.fromARGB(255, 8, 60, 102),
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 43,),
                      Container(
                        width: MediaQuery.of(context).size.width*1,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 19, 57, 89),
                          boxShadow:const [
                            BoxShadow(
                              color: Color.fromARGB(255, 214, 214, 214),
                              offset: Offset(5, 5),
                              blurRadius: 7
                            )
                          ],
                          borderRadius: BorderRadius.circular(13)
                        ),
                        child: TextButton(
                          onPressed:() async{
                            User user = Provider.of<User>(context, listen: false);
                            user.status = true;
                            Navigator.pushReplacement(
                              context, 
                              MaterialPageRoute(builder: ((context) => Controller()))
                            );
                          }, 
                          child: const Text(
                            'Sing In',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                )
              ],
            ),
          )
        )
      ),
    );
  }
}
