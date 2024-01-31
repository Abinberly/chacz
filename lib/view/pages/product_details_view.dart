import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsView extends StatelessWidget {
  final dynamic product;
  const ProductDetailsView({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(title: Text(product['brand'],style: GoogleFonts.poppins(color: const Color(0xFF770737)),),
          actions: [
          IconButton(
              onPressed: () {},
              icon:
                  Icon(Icons.notifications_outlined, color: Colors.grey[700])),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_outline_outlined,
                  color: Colors.grey[700])),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag_outlined, color: Colors.grey[700]))
        ],
          ),
          body:  SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Image.network(product['image_link'])),
                   const SizedBox(height: 10),
                   Text(product['name'],style: GoogleFonts.poppins(fontSize: 12),),
                   const SizedBox(height: 5),
                  Text("Price : ${product['price']} \$",style: GoogleFonts.poppins(fontSize: 12),),
                   const SizedBox(height: 10),
                  Text("Description : ${product['description']}",style: GoogleFonts.poppins(fontSize: 10),textAlign:TextAlign.justify ,),
                ],
              ),
            ),
          ),
    );
  }
}