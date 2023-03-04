import 'package:bmi/Provider/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class page_02 extends StatelessWidget {
  page_02({Key? key}) : super(key: key);

  String BMI_Value = "18.5";
  String Intro = "Normal";
  String MSG = "You Have Perfect BMI !";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101428),
      appBar: AppBar(
        title: const Text(" Your Result .",
        style: TextStyle(
          decoration: TextDecoration.underline,
          fontSize: 30,
        ),),
        centerTitle: true,
        backgroundColor: const Color(0xFF101428),
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 50),
              height: 500,
              width: double.infinity,
              decoration:  BoxDecoration(
                color: const Color(0xFF232336),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Consumer<DataProvider>(builder: (context,provider,child){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     Text(provider.Intro(),
                      style: const TextStyle(
                        color: Color(0xFF7ED779),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),



                    Text(provider.calculateBMI().toInt().toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 90,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(provider.getMessage(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              },),
            ),
          ],
        ),
      ),

      bottomSheet: GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: Container(
          height: 70,
          decoration: const BoxDecoration(
            color: Color(0xFFca1b53),
          ),
          alignment: Alignment.center,
          child: const Text("RE-CALCULATE",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}