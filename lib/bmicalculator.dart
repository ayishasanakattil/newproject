import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double h_value=0;
  double w_value=0;
  double result=0;
  void calculate(){
    h_value=double.parse(height.text)/100;
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
              style: TextStyle(fontStyle: FontStyle.normal), 'BMI CALCULATOR')),
      backgroundColor: Colors.cyan,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [Padding(
          padding: const EdgeInsets.only(left: 600,right: 600,bottom: 20),
          child: TextField(
            controller:height,

            cursorColor: Colors.black,
            style: TextStyle(
                color: Colors.black
            ),
            decoration: InputDecoration(
              hintText: 'height',
              filled: true,
              fillColor: Colors.white70,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50)
              ),
            ),
          ),
        ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 600,right: 600),
            child: TextField(
              controller: weight,
              cursorColor: Colors.black,
              style: TextStyle(
                  color: Colors.black
              ),
              decoration: InputDecoration(
                hintText: 'weight',
                filled: true,
                fillColor: Colors.white70,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(onPressed: (){
              setState(() {

              });calculate();}, child: Text('calculate'),),
          ),
          Text('result'),

        ],
      ),
    );
  }
}
