import 'package:ekartmob/components/Priceslider.dart';
import 'package:ekartmob/components/roundbox.dart';
import 'package:flutter/material.dart';

class Filterscreen extends StatelessWidget {
  Filterscreen({super.key});

  List<String> Gender = ['All','Men','Women'];
  List<String> Rating = ['All','1 ⭐','2 ⭐','3 ⭐','4 ⭐','5 ⭐'];
  List<String> Categories = ['All','Electronics','Fashion','Home','Sports','Games','Health'];

  

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
                      child: Roundbox( list: Categories,)
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
                
                Roundbox( list: Gender,),
              ],
            ),
const SizedBox(height: 8,),  
             const Text('Price',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
           TwoWaySlider(min: 0.0, max: 1000.00, lowerValue: 22, upperValue: 400, onChanged: (RangeValues value) { print('text'); },),
            const Text('Ratings',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
           const SizedBox(height: 2,),
             Row(
              children: [
                
                Roundbox(list: Rating,),
              ],
            ),
            const SizedBox(height: 8,),

            Center(
              child: TextButton(
                onPressed: (){},
             child: Container(
              height: 50,
              width:200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
              borderRadius: const BorderRadius.all(Radius.elliptical(12, 19)),
             color: Colors.amber,
              ),
              child: const Center(
                child: Text('Update Filter',style: TextStyle(
                  fontSize: 20,
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