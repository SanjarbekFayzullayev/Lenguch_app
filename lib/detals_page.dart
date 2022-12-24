import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'detals_page_en.dart';
import 'detals_page_route.dart';
import 'muduls_data.dart';
class DetalPage extends StatefulWidget {
  const DetalPage({Key? key}) : super(key: key);

  @override
  State<DetalPage> createState() => _DetalPageState();
}

List<MudulasData> list = [
  MudulasData("Adress", "[a'dres] n", "ad res, manzilgoh;(speech) murojaatnoma nutq v yo'naltirm oq, yo'llamoq (a p p ly) murojaatqilmoq  - a meetin g'yig'ilishda nu tq so'zla"),
  MudulasData("Administer", "[ad’minista(r)] v ", "(manage) boshqarmoq  (dispense) jo'natmoq (give) b e rmoq.Administrationn. ma'muriyat,boshqaruv (government)hukumat. Admin is trative adj.Ma'muriy , boshqaruvgaoid .Administrator. ma'mur, administrator,"),
  MudulasData("Apparent", "(e'paerent) adj", "(seeming) ko'rinib turgan, ko'zga ko'rinadigan; (manifest) ochiq ko'rinib turgan, oshkor, yaqqol,baralla; Heir - bavosita merosxo'r."),
  MudulasData("Appear", "[a'pie(r)]jv", "Paydo bo'lmoq,yuzaga (vujudga) kelmoq otlanm oq, o lg'a chiqm oq (seem) bo'lib ko'rinmoq, -ga o‘xshamoq appearance n. payd bo'lish, yuzaga kelish, otlanish,olg'a chiqish; (aspect) krinish,tus, tashql ko'rinish, qiyofa, aftangonko'rinish; tus. surat."),
  MudulasData("Accept", "[ak'sept] v.", "qabul qilmoq (agree) rozi bo’lmoq. acceptable adj. ma'qul, muvofiq keladigan; (ple a sing ) yoqa d iga n , ko 'n g ildagi. Acceptancen. qabulqilish.Accept-ationn. qabul qilinga nma’no. Acceptedadj.(um um )qabul qilingan."),
  MudulasData("Access", "[aekses] n", "kirish yo 'li,kiriladigan jo y (attack) hujum .accessaryn. (a fte r th e fa ct)sherlk , birga ishtirokqilgan (biron voqeadan keyingi jinoyatda), ccessible adj. hammabop,tushunarti acessionn. O'tirm oq, minmoq (taxtgay, (acquisition ) o lish , orttirish , egabo'lish. accessoriesn. buyumlar.Accessory adj. qo'shimcha, yordamchi."),
  MudulasData("After", "[’afta(r)] in com b", "-dan so'ng, -dan keyin. a fterbirth n.Yo'ldosh, esh. after-dinner adj.Tushlikdan keyingi. a fterlifen.Narigi dunyodagi hayot. after ath [aifte.mzee, -,m a:9]n. oqiba afternoonn. kunning ikkinch yarmi  inth e - kunduzi kunduz kuni, tushdan keyin. aftrshockn. takroriy silkinish. aftrthoughtn. kechikkan g'oya."),
  MudulasData("Agnostic", "[aeg’nostik] n", "Agnostik adj. agnostikaga oid. Agnostic is mn. agnostitsizm (ob’ekliv dunyoni va uning qonuniyatlarin bilish mum kinligini inkor etuvch idaa lislik falsafiy ta'lim ot)"),
  MudulasData("Astonish", "[e'stomj] v", "Hayron qoldirm oq. astonishing adj.Hayratlanarli, hayratomuz. astonishment n. hayrat."),
  MudulasData("Attract", "[a'traakt] v", "Tortmoq, tortib keltirmoq, o'ziga tortmoq; maftunetmoq; tortmoq, jalb qilmoq,qatnash tirm oq ."),
  MudulasData("Augment", "[o:g'ment] n", "ko'paytirmoq,kattalashtirmoq; qo'shmoq.Augmentation n. ko'paytirish, kattalashtirish; qo'shish."),
];

class _DetalPageState extends State<DetalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onTap: () {
            showSearch(context: context, delegate: CostumSeranch());
          },
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.white),
            border: OutlineInputBorder(),
            counterStyle: TextStyle(color: Colors.white),
            hintText: ' Qidiruv...',
          ),
        ),
        actions: [
          AvatarGlow(
            showTwoGlows: true,
            animate: true,
            repeat: true,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mic),
            ),
            endRadius: 20,
          ),
          AvatarGlow(
              showTwoGlows: true,
              animate: true,
              repeat: false,
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetalPageEn(),));
                },
                icon: const Icon(Icons.screen_rotation_alt),
              ),
              endRadius: 20),
        ],
      ),
      drawer: Drawer(),
      body: ListView(
        children: [
          MyCard(list[0], context),
          MyCard(list[1], context),
          MyCard(list[2], context),
          MyCard(list[3], context),
          MyCard(list[4], context),
          MyCard(list[5], context),
          MyCard(list[6], context),
          MyCard(list[7], context),
          MyCard(list[8], context),
          MyCard(list[9], context),
          MyCard(list[10], context),
        ],
      ),
    );
  }
}

boss(MudulasData mudulasData, BuildContext context) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetalsPages(
          mudulasData: mudulasData,
        ),
      ));
}

class CostumSeranch extends SearchDelegate {
  List<MudulasData> allData = [
    MudulasData("Adress", "[a'dres] n", "ad res, manzilgoh;(speech) murojaatnoma nutq v yo'naltirm oq, yo'llamoq (a p p ly) murojaatqilmoq  - a meetin g'yig'ilishda nu tq so'zla"),
    MudulasData("Administer", "[ad’minista(r)] v ", "(manage) boshqarmoq  (dispense) jo'natmoq (give) b e rmoq.Administrationn. ma'muriyat,boshqaruv (government)hukumat. Admin is trative adj.Ma'muriy , boshqaruvgaoid .Administrator. ma'mur, administrator,"),
    MudulasData("Apparent", "(e'paerent) adj", "(seeming) ko'rinib turgan, ko'zga ko'rinadigan; (manifest) ochiq ko'rinib turgan, oshkor, yaqqol,baralla; Heir - bavosita merosxo'r."),
    MudulasData("Appear", "[a'pie(r)]jv", "Paydo bo'lmoq,yuzaga (vujudga) kelmoq otlanm oq, o lg'a chiqm oq (seem) bo'lib ko'rinmoq, -ga o‘xshamoq appearance n. payd bo'lish, yuzaga kelish, otlanish,olg'a chiqish; (aspect) krinish,tus, tashql ko'rinish, qiyofa, aftangonko'rinish; tus. surat."),
    MudulasData("Accept", "[ak'sept] v.", "qabul qilmoq (agree) rozi bo’lmoq. acceptable adj. ma'qul, muvofiq keladigan; (ple a sing ) yoqa d iga n , ko 'n g ildagi. Acceptancen. qabulqilish.Accept-ationn. qabul qilinga nma’no. Acceptedadj.(um um )qabul qilingan."),
    MudulasData("Access", "[aekses] n", "kirish yo 'li,kiriladigan jo y (attack) hujum .accessaryn. (a fte r th e fa ct)sherlk , birga ishtirokqilgan (biron voqeadan keyingi jinoyatda), ccessible adj. hammabop,tushunarti acessionn. O'tirm oq, minmoq (taxtgay, (acquisition ) o lish , orttirish , egabo'lish. accessoriesn. buyumlar.Accessory adj. qo'shimcha, yordamchi."),
    MudulasData("After", "[’afta(r)] in com b", "-dan so'ng, -dan keyin. a fterbirth n.Yo'ldosh, esh. after-dinner adj.Tushlikdan keyingi. a fterlifen.Narigi dunyodagi hayot. after ath [aifte.mzee, -,m a:9]n. oqiba afternoonn. kunning ikkinch yarmi  inth e - kunduzi kunduz kuni, tushdan keyin. aftrshockn. takroriy silkinish. aftrthoughtn. kechikkan g'oya."),
    MudulasData("Agnostic", "[aeg’nostik] n", "Agnostik adj. agnostikaga oid. Agnostic is mn. agnostitsizm (ob’ekliv dunyoni va uning qonuniyatlarin bilish mum kinligini inkor etuvch idaa lislik falsafiy ta'lim ot)"),
    MudulasData("Astonish", "[e'stomj] v", "Hayron qoldirm oq. astonishing adj.Hayratlanarli, hayratomuz. astonishment n. hayrat."),
    MudulasData("Attract", "[a'traakt] v", "Tortmoq, tortib keltirmoq, o'ziga tortmoq; maftunetmoq; tortmoq, jalb qilmoq,qatnash tirm oq ."),
    MudulasData("Augment", "[o:g'ment] n", "ko'paytirmoq,kattalashtirmoq; qo'shmoq.Augmentation n. ko'paytirish, kattalashtirish; qo'shish."),
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
          close(context, null);
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuer = [];
    for (var item in allData) {
      if (item.name.contains(query.toLowerCase())) {
        matchQuer.add(item.name);
      }
    }

    return ListView.builder(
        itemCount: matchQuer.length,
        itemBuilder: (BuildContext context, index) {
          var result = matchQuer[index];
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetalPage(),));
                },
                child: ListTile(
                  title: Text(
                    result,
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuer = [];
    for (var item in allData) {
      if (item.name.contains(query.toLowerCase())) {
        matchQuer.add(item.name);
      }
    }
    return ListView.builder(
        itemCount: matchQuer.length,
        itemBuilder: (context, index) {
          var result = matchQuer[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}


Widget MyCard(MudulasData mudulasData, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetalsPages(mudulasData: mudulasData),
          ));
    },
    child: Container(
      color: Colors.white,
      height: 70.0,
      child: Card(
        shadowColor: Colors.black,
        elevation: 22,
        margin: EdgeInsets.all(6),
        color: Colors.white,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "  " + mudulasData.name,
                style: TextStyle(color: Colors.black,fontSize: 18),
              ),
              SizedBox(
                height: 12,
              ),
              Text("  " + mudulasData.hintName),
            ],
          ),
        ),
      ),
    ),
  );

}

