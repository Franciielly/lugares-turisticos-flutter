import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cidades Turísticas no Brasil',
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Lugares Turístico no Brasil',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 94, 179, 85),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildCityCard(
                'Paraty - RJ',
                'Uma cidade histórica com praias deslumbrantes e charme colonial.',
                'https://www.blumarturismo.com.br/blog/wp-content/uploads/2020/12/Foto-Catarina-Belova-Shutterstock.com_.jpg',
              ),
              buildCityCard(
                'Salvador - BA',
                'Famosa pelo Pelourinho e suas festas culturais.',
                'https://spriomais.com.br/wp-content/uploads/2024/08/9c42e257-fce5-4600-97d1-c3f3c6afd86b.jpg',
              ),
              buildCityCard(
                'Fernando De Noronha - PE',
                'Conhecido por suas águas cristalinas, rica vida marinha e paisagens deslumbrantes.',
                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Forte_de_Nossa_Senhora_dos_Rem%C3%A9dios_de_Fernando_de_Noronha02.jpg/640px-Forte_de_Nossa_Senhora_dos_Rem%C3%A9dios_de_Fernando_de_Noronha02.jpg',
              ),
              buildCityCard(
                'Gramado - RS',
                'Uma cidade encantadora, famosa por sua arquitetura europeia e paisagens deslumbrantes.',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHFNzys3iudLifoDA8wIJjY98R1aNqSGCxSw&s',
              ),
               buildCityCard(
                'Rio de Janeiro - RJ',
                'Cidade vibrante, conhecida por suas praias icônicas e o Cristo Redentor.',
                'https://jpimg.com.br/uploads/2023/05/turismo-no-rio-de-janeiro-veja-o-que-visitar-na-cidade-maravilhosa-1024x683.jpg',
              ),
              buildCityCard(
                'Jericoacoara - CE',
                'É um paraíso no Ceará, famoso por suas dunas, lagoas de água cristalina e clima relaxante.',
                'https://thumbcdn-5.hotelurbano.net/3yOfEExSCzxqNCViGAAkxZrJmTI=/0x0/center/middle/filters:format(webp):strip_icc()/https://s3.amazonaws.com/legado-prod/prod/ofertas/imagens/2024/08/14/00/49/jeri_hurb.jpg',
              ),
              buildCityCard(
                'Arraial do Cabo - RJ',
                'Famoso por suas praias de águas cristalinas e paisagens naturais paradisíacas.',
                'https://redencaoturismo.com.br/wp-content/uploads/2021/08/bhpyuxz0egs.png',
              ),
              buildCityCard(
                'Arraial do Cabo - RJ',
                'Famoso por suas praias de águas cristalinas e paisagens naturais paradisíacas.',
                'https://redencaoturismo.com.br/wp-content/uploads/2021/08/bhpyuxz0egs.png',
              ),
              buildCityCard(
                'Porto de Galinhas - PE',
                'Um destino encantador, conhecido por suas piscinas naturais e praias de águas claras e mornas.',
                'https://www.pousadadasgalinhas.com.br/media/pousadadasgalinhas/mediafiles/2023/9/aerial-view-porto-de-galinhas-beaches-pernambuco-br_fcQqQEZ.jpg',
              ),
              buildCityCard(
                'Lençois Maranheses - MA',
                'Paraíso natural, famoso por suas dunas de areia branca e lagoas de águas cristalinas, criando paisagens deslumbrantes.',
                'https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRvYdl_kkvhOoMbu1Ry1m7HXDbbU8Ff8Y1qHxXtvmT2iJ28fbC0o1y6xPF8SPgCFMtzfNyzWWdVw7alLq4urmpZdasgui-yqEYRkpzx7cE',
              ),
              buildCityCard(
                'Jalapão - TO',
                'Famoso por suas dunas douradas, fervedouros e paisagens selvagens de beleza exuberante.',
                'https://static.planetaexo.com/wp-content/uploads/2023/05/best-natural-pools-in-jalapao-state-park-fervedouro-spring-planeta-exo-4.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildCityCard(String cityName, String description, String imageUrl) {
  return Card(
    margin: const EdgeInsets.all(12.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          imageUrl,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            cityName,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(
            description,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
      ],
    ),
  );
}
