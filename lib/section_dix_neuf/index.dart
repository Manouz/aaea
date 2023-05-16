import 'package:aaea/section_dix_neuf/Villes.dart';
import 'package:flutter/material.dart';
import 'package:aaea/section_dix_neuf/Abidjan.dart';

class iindex extends StatefulWidget {
  iindex({super.key});

  @override
  State<iindex> createState() => _iindexState();
}

class _iindexState extends State<iindex> {
// i=Det_Ville_List();
  // static List url = [
    
    
  //   "https://www.bing.com/images/search?view=detailV2&ccid=BrW9o3Tu&id=1242C9967198E6CDB3AE02AB1F628CD61B4118A4&thid=OIP.BrW9o3TuBav7WED-t73okwEyDM&mediaurl=https%3A%2F%2Fth.bing.com%2Fth%2Fid%2FR.06b5bda374ee05abfb5840feb7bde893%3Frik%3DpBhBG9aMYh%252brAg%26riu%3Dhttp%253a%252f%252ffresco.ecommunes.ci%252fUploads%252fPost%252ffresco.jpg%26ehk%3DEtw6t2cd47gimRYX5fTff3Zi6ZKTbVgyA3Mkqf5DM84%253d%26risl%3D%26pid%3DImgRaw%26r%3D0&exph=933&expw=1400&q=fresco+cote+d%27ivoire&simid=608026713710405162&form=IRPRST&ck=3751AE6BBB0E169EC6461DEB0E719F6D&selectedindex=0&ajaxhist=0&ajaxserp=0&vt=2",
  //   "https://eurochamci.com/assets/images/dev/ivory-coast-regions-map.gif"
  // ];
  // static List<String> TITLE = ["Abidjan", "Yamoussoukro", "Fresco"];
  // static List<String> SUBTITLE = [
  //   "Abidjan est ...",
  //   "Yamoussoukro est ...",
  //   "Fresco est ..."
  // ];
  // List<Det_Ville> Details = List.generate(TITLE.length,
  //     (index) => Det_Ville(TITLE[index], SUBTITLE[index], url[index]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
            itemBuilder: (BuildContext context, index) {
              return Card(
                child: ListTile(
                  title: Text(""),
                  subtitle: Text(""),
                  //trailing: Image.network(), 
                  // onTap: () {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => Details_Ville(
                  //               det_ville: Details[index],
                  //               )));
                  // },
                ),
              );
    }));
  }
}

class Det_Ville {
  String titre;
  String image;
  String sous_titre;
  Det_Ville(
      {required this.titre, required this.image, required this.sous_titre});

}
