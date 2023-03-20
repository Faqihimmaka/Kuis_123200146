import 'package:flutter/material.dart';
import 'package:kuispraktpm/Detail.dart';
import 'package:kuispraktpm/rental_car.dart';

class List extends StatefulWidget {
  const List({Key? key}) : super(key: key);

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Rental Mobil',),
        ),
        body: ListView.builder(
            itemBuilder: (context, index){
              final RentalCar rental = rentalCar[index];
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => HalamanDetail(rental:rental)
                  )
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Row(
                      children: <Widget>[
                        Card(
                          child: Image.network(rental.images[1],
                            width: 150,
                            height: 150,
                          ),
                        ),
                        Column(
                            children: <Widget>[
                              Row(

                                children: [
                                  Text(rental.brand),
                                  Text(rental.model)
                                ],
                              ),

                              Row(
                                children: [
                                  Text(rental.rentalPricePerDay),
                                  Text('/hari'),
                                ],
                              ),
                            ]
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: rentalCar.length,

            ),
        );
    }
}