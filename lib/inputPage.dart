import 'result.dart';
import 'package:flutter/material.dart';
import 'style.dart';
int age=8;
int weight=25;
double height=120;
Color malecolor =Color(0xff1D1F33);
Color femalecolor =Color(0xff1D1F33);
class inputPage extends StatefulWidget {
  const inputPage({super.key});

  @override
  State<inputPage> createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {
  @override
  Expanded heightAge(String height_Age,var x) {
    return Expanded(child: Container(color: Color(0xff111428), child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(height_Age,style: titleStyle,textAlign: TextAlign.center,),
        Text(x.toString(),style: TextStyle(fontSize: 50,fontWeight: FontWeight.w900),textAlign: TextAlign.center,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            add_sub(Icons.remove,height_Age),
            SizedBox(width: 25,),
            add_sub(Icons.add,height_Age)
          ],
        )
      ],
    )));
  }

  RawMaterialButton add_sub(IconData icon,String x) {
    return RawMaterialButton(
      onPressed: () {
        setState(() {
          if(x=='age') {
            if (age > 5)
              age = icon == Icons.add ? age + 1 : age - 1;
          }
          else
            if(weight>10)
              weight=icon==Icons.add?weight+1:weight-1;
        });
      },
      child: Icon(icon,size: 30,),
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      shape: CircleBorder(),
      fillColor: Color(0xff1C1F32),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
              "BMI CALCULATOR",
              textAlign: TextAlign.center,
              style: titleStyle,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  gender('MALE', Icons.male,malecolor),
                  SizedBox(
                    width: 10,
                  ),
                  gender('FEMALE', Icons.female,femalecolor)
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Color(0xff111428),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children:[
                      Expanded(
                          child: Text('HEIGHT',style: titleStyle,textAlign: TextAlign.center,)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                                Text(height.toString(),style: numberStyle,),
                            Text('Cm')
                          ],
                        ),
                      Expanded(
                        child: SliderTheme(
                          data: SliderThemeData(
                            inactiveTrackColor: Color(0xff888993),
                            activeTrackColor: Colors.white,
                            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 20),
                            thumbColor: Color(0xffEB1555),
                            overlayShape: RoundSliderOverlayShape(overlayRadius: 24),
                            overlayColor: Color(0xff871441)
                          ),
                          child: Slider(
                            min: 120,
                            max: 220,
                            value: height.toDouble(),
                            onChanged: (double value){
                              setState(() {
                                height=double.parse(value.toStringAsFixed(1));
                              });
                            },
                          ),
                        ),
                      ),
                    ]
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  heightAge('age',age),
                  SizedBox(width: 10),
                  heightAge('Weight',weight)
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Color(0xffEB1555),
                child: TextButton(
                  onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>resultPage(height:height,weight: weight)));
                  },
                  child: Text('CALCULATE YOUR BMI',style: titleStyle),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Expanded gender(String gender,IconData icon,Color color){
    return Expanded(child: Container(
      child: GestureDetector(
        onTap: (){
          setState(() {
            swapColor(icon);
          });
        },
        child: Container(
          color: color,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon,size: 75),
                Text(gender)
              ]
          ),
        ),
      ),
    )
    );
  }

}
void swapColor(IconData icon){
  print(1);
  if(icon==Icons.male){
    malecolor=Color(0xff111428);
    femalecolor=Color(0xff1D1F33);
  }
  else {
    femalecolor = Color(0xff111428);
    malecolor = Color(0xff1D1F33);
  }
}