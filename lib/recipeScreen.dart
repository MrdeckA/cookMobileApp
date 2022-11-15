import 'package:custom_module/favoriteWidget.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class RecipeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: const Text(
                        "Pizza facile",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    const Text(
                      "Par Meriadeck AMOUSSOU",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )),
         FavoriteWidget(favoriteCount : 50, is  Favorited: true)
          ],
        ));
    Widget buttonSection = Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildBottomColumn(Colors.red, Icons.comment, "Comment"),
          _buildBottomColumn(Colors.red, Icons.share, "Share")
        ],
      ),
    );
    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
          "Choisissez un reblochon au lait cru de couleur jaune-orangée. Grattez la croûte au couteau pour la nettoyer, puis coupez le fromage en deux. Coupez chaque moitié horizontalement et déposez les quatre morceaux sur les oignons, croûte vers le haut. Poivrez légèrement mais ne salez pas. Faites cuire environ 30 minutes à 180°c jusqu'à ce que la tartiflette soit bien dorée, le fromage parfaitement fondu. En fin de cuisson, n'hésitez pas à mettre le four en position grill pour dorer la tartiflette. "),
    );

    return Scaffold(
        appBar: AppBar(
          title: const Text("Mes Recettes"),
        ),
        body: ListView(
          children: [
            /*CachedNetworkImage(
             imageUrl: "https://img.freepik.com/photos-gratuite/vue-dessus-pizza-au-pepperoni-saucisses-aux-champignons-poivron-olive-mais-bois-noir_141793-2158.jpg?w=2000",
            placeholder: (context, url)=>const Center(child: CircularProgressIndicator(),),
            errorWidget: (context, url, error)=>const Icon(Icons.error),
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),*/
            Stack(
              children: [
                Container(
                  width: 600,
                  height: 240,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
                FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image:
                    'https://img.freepik.com/photos-gratuite/vue-dessus-pizza-au-pepperoni-saucisses-aux-champignons-poivron-olive-mais-bois-noir_141793-2158.jpg?w=2000')
              ],
            ),
            titleSection,
            buttonSection,
            descriptionSection
          ],
        ));
  }

  Column _buildBottomColumn(Color color, IconData icon, String label) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          padding: const EdgeInsets.only(bottom: 8),
          child: Icon(
            icon,
            color: color,
          )),
      Text(
        label,
        style:
        TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: color),
      )
    ]);
  }
}
