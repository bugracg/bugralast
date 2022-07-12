import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

//ProductCard(name:"erkan")
//Container()
//margin dışa boşluk
//padding içine boşluk

final formatCurrency = NumberFormat.simpleCurrency(locale: "TR");

class ProductCard extends StatelessWidget {
  //sikim ilen daşağım belim ilen kuşağım
  const ProductCard({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.description,
    required this.brand,
  }) : super(key: key);
  final String name;
  final String imageUrl;
  final double price;
  final String description;
  final String brand;

  String getShortName(String name) {
    // İçine girilen ürün markası ve ismini maksimum 20 karaktere indiriyo
    // ve 23 karakter olarak geri dönüyo
    if (name.length > 20) {
      return name.substring(0, 20) + "...";
    }
    return name;
  }

  String getLocalFormattedPrice(double price) {
    // Format given price to Turkish Liras
    var tlFormat = NumberFormat.currency(locale: "tr_TR", symbol: "₺");
    return tlFormat.format(price);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Column(
          children: <Widget>[
            Image(
              image: NetworkImage(imageUrl),
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 5,
              width: double.infinity,
            ),
            Container(
                // padding bırakmak için
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      getShortName("$brand $name"),
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                      width: double.infinity,
                    ),
                    Text(
                      description,
                      style: TextStyle(fontSize: 12),
                    ),
                    const SizedBox(
                      height: 5,
                      width: double.infinity,
                    ),
                    Text(
                      getLocalFormattedPrice(price),
                      style: TextStyle(color: Colors.orange, fontSize: 20),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "SEPETE EKLE 🛒",
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
