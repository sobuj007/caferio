import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: SignUpPage()));
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController email=TextEditingController();
  TextEditingController fullname=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(image: AssetImage('assets/caferio.png'),width: 150,),
              regForm(),
              
            ],
          ),
        ),
      ),
    ),),

    bottomNavigationBar: Container(
      height: 45, 
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Allready have account ! ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
     ,Text("Sing In ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.orange),)
    ],),
      )),
    
    );
  }



  regForm()=>Card(elevation: 7,child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

    Padding(
      padding: EdgeInsets.symmetric(horizontal: 14,vertical: 10),
      child: Text('SignUp',style: TextStyle(fontSize: 28,color: Colors.orange),),
    ),
              /*********************************** email */
              Padding(
                 padding: EdgeInsets.symmetric(horizontal: 14,vertical: 5),
                  child: TextField(
                    controller: fullname,
                    decoration: InputDecoration(
                      hintText: 'jhonathon ',
                      label: Text("Full Name"),
                      labelStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),
                      prefixIcon: Icon(Icons.person,color: Colors.orange,),
                      focusColor: Colors.amber,
                      suffixIcon: IconButton(icon: Icon(Icons.delete,color: Colors.grey,),onPressed: (){
                        email.clear();
          
                      },),
                       contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.orange)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.orange))
                    ),
                  ),
                ),
              /*********************************** email......................... */
              Padding(
                 padding: EdgeInsets.symmetric(horizontal: 14,vertical: 5),
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                      hintText: 'example@mail.com',
                      label: Text("Email"),
                      labelStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),
                      prefixIcon: Icon(Icons.email,color: Colors.orange,),
                      focusColor: Colors.orange,
                      suffixIcon: IconButton(icon: Icon(Icons.delete,color: Colors.grey,),onPressed: (){
                        email.clear();
          
                      },),
                       contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.orange)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.orange))
                    ),
                  ),
                ),
              /*********************************** Password..................... */
              Padding(
                 padding: EdgeInsets.symmetric(horizontal: 14,vertical: 5),
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                      hintText: 'example@mail.com',
                      label: Text("Password"),
                      labelStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),
                      prefixIcon: Icon(Icons.key,color: Colors.orange,),
                      focusColor: Colors.orange,
                      suffixIcon: IconButton(icon: Icon(Icons.delete,color: Colors.grey,),onPressed: (){
                        email.clear();
          
                      },),
                       contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.orange)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.orange))
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    height: 50,decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.orange),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,child: Text("Sing Up !",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),),
                )
,SizedBox(height: 10,)

            ],),);
}
