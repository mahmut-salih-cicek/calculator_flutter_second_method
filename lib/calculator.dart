import 'package:flutter/material.dart';
  
   class CalculatorData extends StatefulWidget  {
  @override
  State createState()=>Calculator();
     
   }

class Calculator extends State<CalculatorData> {
  ///// DEGİSKENLER BURDA TANIMLANDI CUNKU HERYERDE ERİSİLSİN :)
  var numara1 = 0;
  var numara2 = 0;
  var sonuc = 0;
  TextEditingController editeText1 = TextEditingController(text: "0");
  TextEditingController editText2 = TextEditingController(text: "0");
  ///////// TOPLAMA CIKARMA CARPMA BOLME METHODLARI BURDA TANIMLI HERYERDEN ERİSİLSİN
  /// NUMARA1 DEGİSKENİNE EDİT TEXTDEN GELEN SAYIYI İNT ÇEVİRİP ATAMA YAP
  
  void topla(){
    setState(() {
          numara1 = int.parse(editeText1.text);
          numara2 =int.parse(editText2.text);
          sonuc = numara2+numara1;
        });
  }

  void cikar(){
    setState(() {
          numara1 = int.parse(editeText1.text);
          numara2 = int.parse(editText2.text);
          sonuc =  numara1-numara2;
        });
  }

  void carp(){
    setState(() {
          numara1 = int.parse(editeText1.text);
    numara2 = int.parse(editText2.text);
    sonuc = numara1 * numara2;
        });
    
  }
  void bol(){
    setState(() {
             numara1 = int.parse(editeText1.text);
    numara2 = int.parse(editText2.text);
    sonuc = numara1 ~/ numara2;
        });
 
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text("Calculator Second Method",
      style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Result: $sonuc",
            style: TextStyle(color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Column(
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "Enter Number 2",
                  focusColor: Colors.amber,
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  controller: editeText1,
                ),
              ],
            ),
            ///////////////////////////////////////////////////////////
             Padding(padding: EdgeInsets.only(top: 20)),
           Column(
             children: [
               TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Number 2",
              focusColor: Colors.amber,
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              controller: editText2,
            ),
             ],
           ),
           /////////////////////////////////////////////////////////////////

            Padding(
              padding:  EdgeInsets.only(top: 20.0),
              ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 MaterialButton(
                   child: Text("+",style: TextStyle(fontSize: 18),),
                   color: Colors.amber,
                   elevation: 8,
                   onPressed: topla,
                   ),

                   MaterialButton(
                   child: Text("-",style: TextStyle(fontSize: 30),),
                   color: Colors.amber,
                   elevation: 8,
                   onPressed: cikar,
                   ),
               ],
             ),
             Padding(
               padding: EdgeInsets.only(top:20)
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 MaterialButton(
                   child: Text("÷",style: TextStyle(fontSize: 20),),
                   color: Colors.amber,
                   elevation: 8,
                   onPressed: bol,
                   ),

                   MaterialButton(
                   child: Text("*",style: TextStyle(fontSize: 22),),
                   color: Colors.amber,
                   elevation: 8,
                   onPressed: carp,
                   ),
               ],
             ),
          ],
        ),
      ),
   );
  }

}