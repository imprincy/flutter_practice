import 'package:flutter/material.dart';

class YourBMI extends StatefulWidget {
  const YourBMI({super.key});

  @override
  State<YourBMI> createState() => _YourBMIState();
}

class _YourBMIState extends State<YourBMI> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  var result='';
  var bgColor=Colors.indigo.shade300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Center(
          child: Text(
            "BMI",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontFamily: 'FontFirst'),
          ),
        ),
      ),
      body: Container(
        // color: bgColor,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Text(
                "BMI",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'FontFirst',
                    fontWeight: FontWeight.w700),
              ),
              TextField(
                controller: wtController,
                decoration: InputDecoration(
                  label: Text("Please Enter your weight",style: TextStyle(color: Colors.black),),
                  prefixIcon: Icon(Icons.monitor_weight_outlined),
                ),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: ftController,
                decoration: InputDecoration(
                  label: Text("Please enter your height in feet",style: TextStyle(color: Colors.black),),
                  prefixIcon: Icon(Icons.height_outlined),
                ),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: inController,
                decoration: InputDecoration(
                  label: Text("Please enter your height in inches",style: TextStyle(color: Colors.black),),
                  prefixIcon: Icon(Icons.height),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 19,
              ),
              ElevatedButton(onPressed: () {
                var wt=wtController.text.toString();
                var ft=ftController.text.toString();
                var inch=inController.text.toString();

                if(wt!='' && ft!='' && inch!=''){

                  var iwt=int.parse(wt);
                  var ift=int.parse(ft);
                  var iInch=int.parse(inch);

                  var tInch=(ift*12)+iInch;
                  var tCm=tInch*2.54;
                  var tM=tCm/100;
                  var bmi=iwt/(tM*tM);
                  var msg='';

                  if(bmi<18){
                    msg='you are underweight';
                    bgColor=Colors.orange.shade200;
                  }else if(bmi>25){
                    msg='you are over weight';
                    bgColor=Colors.red.shade200;
                  }else{
                    msg='you are healthy';
                    bgColor=Colors.green.shade100;
                  }

                 setState(() {
                   result='$msg \n Your BMI is ${bmi.toStringAsFixed(2)}';
                 });

                }else{
                  setState(() {
                    result='Please Enter the required blanks to get result';
                  });

                }

              }, child: Text("Calculate BMI")),
              SizedBox(
                height: 11,
              ),
              Text(result,style: TextStyle(fontSize: 12,fontFamily: 'FontFirst'),),
            ],
          ),
        ),
      ),
    );
  }
}
