import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Bugra Çığ'),
            accountEmail: Text('bugracg@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                    'https://static.wixstatic.com/media/ada414_019ff2e01ebd463981045a8135df581c~mv2.jpeg/v1/fill/w_380,h_380,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/ada414_019ff2e01ebd463981045a8135df581c~mv2.jpeg',
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue[400],
              image: DecorationImage(
                  image: NetworkImage(
                      'https://www.3boyutluduvarkagitlari.com/FotoGaleri/Small/Mermer-Desen-3D-Duvar-Ka%C4%9F%C4%B1d%C4%B1-290420212942021135517952.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favoriler'),
            onTap: () => null,
          ),
          ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Sepetim'),
              onTap: () => null,
              trailing: ClipOval(
                  child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '3',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ))),
          ListTile(
            leading: Icon(Icons.share),
            title: Text(
              'Paylaş',
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Bildirimler'),
            onTap: () => null,
            trailing: ClipOval(
                child: Container(
              color: Colors.red,
              width: 20,
              height: 20,
              child: Center(
                child: Text(
                  '8',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            )),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Ayarlar'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Tanım '),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Çıkış'),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
