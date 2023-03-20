import 'package:flutter/material.dart';
import 'package:kuispraktpm/rental_car.dart';

class HalamanDetail extends StatefulWidget {
  final RentalCar rental;
  const HalamanDetail({Key? key, required this.rental}) : super(key: key);


  @override
  State<HalamanDetail> createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.rental.brand),
             // Text(' '),
              Text(widget.rental.model)
            ],
          ),
        ),
        body: Column(
            children: <Widget>[
              Container(
                child: Image.network(widget.rental.images[0],
                  width: 400,
                  height: 400,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.rental.brand),
                  Text(' '),
                  Text(widget.rental.model),
                ],
              ),

              SizedBox(height: 20,),

              Column(
                children: [
                  Row(
                    children: [
                      Text('Brand: '),
                      Text(widget.rental.brand),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Model: '),
                      Text(widget.rental.model),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Tahun: '),
                     // Text(widget.rental.year)
                    ],
                  ),
                  Row(
                    children: [
                      Text('Biaya Sewa : '),
                      Text(widget.rental.rentalPricePerDay),
                      Text(' per Hari'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Status : '),
                      Text('Tersedia',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),),
    ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Pesan'),
                  ),

                  Row(
                    children: [
                      Text('Deskripsi' , style: TextStyle(fontWeight: FontWeight.bold),),
                      Text(widget.rental.description),
                    ],
                  )
                ],
              ),

              Container()
            ],
            ),
        );
    }
}