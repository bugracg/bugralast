import 'package:flutter/material.dart';
import "product_card.dart";

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(children: <Widget>[
        Flexible(
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 0.65,
            children: const <Widget>[
              ProductCard(
                name: "Antalya Mermeri",
                description: "İnce Detaylı işlemeler",
                price: 8700,
                imageUrl:
                    "https://www.pandekor.com/pmd-01-alexander-mermer-pvc-plaka-pvc-mermer-paneller-1928-11-O.jpg",
                brand: "",
              ),
              ProductCard(
                name: "Tundra Dark",
                description: "Siyah detaylı işlemeler",
                price: 6750,
                imageUrl:
                    "https://www.deltamarble.com/wp-content/uploads/2017/04/tundra-dark-feat.jpg",
                brand: '',
              ),
              ProductCard(
                name: "Tezgah Mermer",
                description: "Su İşlemesi ",
                price: 3500,
                imageUrl:
                    "https://i2.milimaj.com/i/milliyet/75/0x0/5f6799a755427f13806e2d0d.jpg",
                brand: "",
              ),
              ProductCard(
                name: "BLACK",
                description: "Siyah mermer",
                price: 6500,
                imageUrl:
                    "https://www.yeditepemaden.com/tr/assets/img/siyah-mermer.jpg",
                brand: "",
              ),
              ProductCard(
                name: "Yeditepe Mermeri",
                description: "Hat işlemeler",
                price: 4750,
                imageUrl:
                    "https://www.yeditepemaden.com/tr/images/urun/big/picasso-cross-cut-mermer_1.jpg",
                brand: "",
              ),
              ProductCard(
                name: "Granit Mermer",
                description: " Mutfak Mermer ",
                price: 5000,
                imageUrl:
                    "https://media.istockphoto.com/photos/marble-granite-picture-id1150059480",
                brand: "",
              ),
            ],
          ),
        )
      ]),
    );
  }
}
