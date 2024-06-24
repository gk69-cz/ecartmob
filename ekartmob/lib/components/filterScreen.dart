import 'package:ekartmob/components/Priceslider.dart';
import 'package:ekartmob/components/roundbox.dart';
import 'package:flutter/material.dart';

class Filterscreen extends StatefulWidget {
  Filterscreen({super.key});

  @override
  State<Filterscreen> createState() => _FilterscreenState();
}

class _FilterscreenState extends State<Filterscreen> {
  List<Map<String,String>> gender =[{
    "name": "All",
    "Selected": "false",
  },{
    "name": "Men",
    "Selected": "false",
  },
  {
    "name": "Women",
    "Selected": "false",
  }];

  List<Map<String,String>> Rating =[{
    "name": "All",
    "Selected": "false",
  },{
    "name": "1 ⭐",
    "Selected": "false",
  },
  {
    "name": "2 ⭐",
    "Selected": "false",
  },
  {
    "name": "3 ⭐",
    "Selected": "false",
  },
  {
    "name": "4 ⭐",
    "Selected": "false",
  },
  {
    "name": "5 ⭐",
    "Selected": "false",
  }];

  List<Map<String,String>> Categories =[{
    "name": "All",
    "Selected": "false",
  },{
    "name": "Electronics",
    "Selected": "false",
  },
  {
    "name": "Fashion",
    "Selected": "false",
  },
  {
    "name": "Home",
    "Selected": "false",
  },
  {
    "name": "Sports",
    "Selected": "false",
  },
  {
    "name": "Games",
    "Selected": "false",
  },
  {
    "name": "Health",
    "Selected": "false",
  }];

List<String> selections =[];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        height: 790,
        width:390,
        child:  Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Center(child: Text('Filter',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 19),)),
            const SizedBox(height: 2,),  
            const Divider(),
          
            const Text('Categories',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Row(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Roundbox( list: Categories,selections:selections)
                      ),
                  ],
                ),
              ),
            ),
const SizedBox(height: 8,),
            const Text('Gender',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
            const SizedBox(height: 2,),
            Row(
              children: [
                
                Center(child: Roundbox( list: gender,selections:selections)),
              ],
            ),
const SizedBox(height: 8,),  
             const Text('Price',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
           TwoWaySlider(min: 0.0, max: 1000.00, lowerValue: 22, upperValue: 400, onChanged: (RangeValues value) { },),
            const Text('Ratings',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
           const SizedBox(height: 2,),
             Row(
              children: [
                
                Center(child: Roundbox(list: Rating,selections:selections)),
              ],
            ),
            const SizedBox(height: 8,),

            Center(
              child: TextButton(
              onPressed: () => sentfilter(),
             child: Container(
              height: 50,
              width:200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow.shade500),
              borderRadius: const BorderRadius.all(Radius.elliptical(12, 19)),
             color: Colors.yellow.shade800,
              ),
              child: const Center(
                child: Text('Update Filter',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),),
              ),
              
             )))
          ],
        ),
      ),
    );
  }
}

sentfilter() {

}