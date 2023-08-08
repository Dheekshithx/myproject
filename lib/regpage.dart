
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myproject/homex.dart';

void main(){
  runApp(MaterialApp(home:Regpage()));
}

class Regpage extends StatefulWidget {
  const Regpage({super.key});

  @override
  State<Regpage> createState() => _RegpageState();
}

class _RegpageState extends State<Regpage> {
  String? pass;
  var formkey=GlobalKey<FormState>();
  bool nopasswordvisibility=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text("Register Page"),
      ),
      body:Form(
        key:formkey,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator:(username){
                   if(username!.isEmpty ){
                    return "field is empty/invalid";
                   }else{
                    return null;
                   }
                  },
                decoration:const InputDecoration(
                  border:OutlineInputBorder(),
                  prefixIcon: Icon(Icons.people),
                  hintText: "Username",
                  labelText: "Username",
                ),
                ),
              ),
            
            
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (email){
                    if(email!.isEmpty || !email.contains("@")){
                      return "Field is empty/invalid";
                    }else{
                      return null;
                    }
                  },
                decoration:const InputDecoration(
                  border:OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: "Email",
                  labelText: "Email",
                ),
                ),
              ),
            
        
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (Phone){
                    if(Phone!.isEmpty ){
                      return "Field is empty/invalid";
                    }else{
                      return null;
                    }
                  },
                decoration:const InputDecoration(
                  border:OutlineInputBorder(),
                  prefixIcon: Icon(Icons.call),
                  hintText: "Phone",
                  labelText: "Phone",
                ),
                ),
              ),
            
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: nopasswordvisibility,
                  validator: (password){
                     pass=password;
                    if(password!.isEmpty || password.length <6){
                      return "Field is empty/invalid";
                    }else{
                      return null;
                    }
                  },
                  
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                      onPressed: (){
                       setState(() {
                       if(nopasswordvisibility==true){
                        nopasswordvisibility=false;
                       }else{
                        nopasswordvisibility=true;
                       }  
                       }); 
                      },
                      icon: Icon(nopasswordvisibility == true
                  ? Icons.visibility_off_sharp
                  :Icons.visibility)),
                   border:OutlineInputBorder(),
                   hintText: "Password",
                   labelText:"Password",
                  ) ,
                ),
              ),
            
             
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: nopasswordvisibility,
                  validator: (confirmpassword){
                    if(confirmpassword!.isEmpty || pass!=confirmpassword){
                      return "Field is empty/invalid";
                    }else{
                      return null;
                    }},
                  
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                      onPressed: (){
                       setState(() {
                       if(nopasswordvisibility==true){
                        nopasswordvisibility=false;
                       }else{
                        nopasswordvisibility=true;
                       }  
                       }); 
                      },
                      icon: Icon(nopasswordvisibility == true
                  ? Icons.visibility_off_sharp
                  :Icons.visibility)), 
                   border:OutlineInputBorder(),
                   hintText: "Confirm Password",
                   labelText:"Confirm Password",
                  ) ,
                ),
              ),
            
            ElevatedButton(
              onPressed: (){
              final valid=formkey.currentState!.validate();
              if(valid){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>Homex()));
              }else{
                Fluttertoast.showToast(
                        msg: "Invalid Username or Password",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM_LEFT,
                        // timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                        }
                        },
                        child: Text("Login")),
          ],
        ),
      ),
    );
      

              }
            }

