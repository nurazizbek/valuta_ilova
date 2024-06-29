import 'package:dastur/model/valuyuta_model.dart';
import 'package:dastur/sersice/valyuta_sersice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class Homepage2 extends StatelessWidget {
  const Homepage2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          
            body: Column(
              children: [
                
                Container(width: 390,height: 844,decoration: BoxDecoration(color: Colors.greenAccent,borderRadius: BorderRadius.all(Radius.circular(15)),),
                  child: Center(
                    child: FutureBuilder(
                        future: valutaservice().getUsers(),
                        builder: (context, AsyncSnapshot snapshot) {
                          if (snapshot.connectionState == ConnectionState.waiting) {
                            return const CircularProgressIndicator();
                          } else if (snapshot.data is String) {
                            return const Center(child: CircularProgressIndicator());
                          } else {
                            var data = snapshot.data as List<Valutamodel>;//Text(data[idnex].email.toString())
                            return ListView.builder(
                              
                              itemBuilder: (context, idnex) {                                                 
                                return 
                                
                                Column(
                                  children: [ SizedBox(height: 7,),
                                    Container(  width: 357,height: 90,
                                      decoration: BoxDecoration(border: Border.all(color: Colors.green.shade100),borderRadius: BorderRadius.all(Radius.circular(15)),color: Colors.green.shade100),
                                    child: ListTile(
                                      title: SingleChildScrollView(scrollDirection: Axis.vertical,
                                      child: Row(
                                        children: [
                                          Container(width: 50,height: 50,decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.circular(90)),),child: Icon(Icons.currency_exchange_outlined,),),
                                         SizedBox(width: 15,) ,

                                         
                                          Row(children: [Text(data[idnex].ccy.toString(),style: TextStyle(fontSize:20,fontWeight:FontWeight.w300 ),)],),
                                          SizedBox(width: 30,),
                                          Icon(Icons.auto_graph,size:40,),
                                         SizedBox(width: 50,),
                                          Container(
                                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(data[idnex].rate.toString(),style: TextStyle(fontSize:20,fontWeight:FontWeight.w300 )),
                                            SizedBox(width: 10,),
                                              Text(data[idnex].diff.toString()),]),
                                          )
                                        ],
                                      ),
                                      ),
                                    ),
                                    ),
                                  ],
                                );
                              },itemCount: data.length,
                            );
                          }
                        }),
                  ),
                ),
               
              ],
            ));
   
  }
}