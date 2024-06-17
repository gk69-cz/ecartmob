import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final String Cost;
  const Footer({super.key, required this.Cost});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:28.0),
      child: Container(
        width: 100,
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              
              child: Container(
                decoration: const BoxDecoration(
                  
                  color: Colors.transparent,
                 borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
             ), 
                 child: Text("$Cost Rs",style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                )
          
            ),
            TextButton(onPressed: (){},
             child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
          Radius.elliptical(19.0,19.0) //               
      ),
                color:Colors.black ,
              ),
              height: 50,
              width:220,
              
              child: const Center(child: Text('Add To Bag' ,style: TextStyle(color: Colors.white,fontSize: 14),)),
              ))
        
          
          ],
        ),
      ),
    );
  }
}
