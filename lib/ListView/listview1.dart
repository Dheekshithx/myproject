import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){
  runApp(MaterialApp(
  debugShowCheckedModeBanner:false,
    home: ListView1()));
}

class ListView1 extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        backgroundColor:Colors.black ,
        title:Text("Sneaker Head Society",
        style:GoogleFonts.alata(color:Colors.white),),
      ),
      body: ListView(
        children: [
          Center(child: Text("SNEAKO",style: GoogleFonts.gloriaHallelujah(fontSize: 50,color:Colors.black))),
          Card(
            color: Colors.lightGreen,
            shadowColor: Colors.black,
            elevation: 10,
            child: ListTile(title: Text("Nike",style: GoogleFonts.jost(),),subtitle: Text("\$199"),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtLnxgpiIJzqGsLgV7SEKQgI9HnNd5DlLHYw&usqp=CAU")),
            trailing: Icon(Icons.shopping_cart),),
          ),
          Card(
            color: Colors.lightGreen,
            shadowColor: Colors.black,
            elevation: 10,
            child: ListTile(title: Text("NewBalance",style: GoogleFonts.jost()),subtitle: Text("\$150"),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.shopify.com/s/files/1/2358/2817/files/new-balance-2002rd-grey_20120286_45641693_2048.png?v=1687425957&width=1940")),
            trailing: Icon(Icons.shopping_cart),),
          ),
          Card(
            color: Colors.lightGreen,
            shadowColor: Colors.black,
            elevation:10,
            child: ListTile(title: Text("Vans",style: GoogleFonts.jost()),subtitle: Text("\$180"),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0xCqMOgiwvIJUhGapbqKsEjaol4fq1kCKUwJVsUmxrUfcXLVSHpfbT0GF3UQedlLNWyI&usqp=CAU")),
            trailing: Icon(Icons.shopping_cart),),
          )
        ],
      ),
    );
  }
}