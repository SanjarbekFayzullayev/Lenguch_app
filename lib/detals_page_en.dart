import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'detals_page_route.dart';
import 'detals_page_route_en.dart';
import 'muduls_data.dart';


class DetalPageEn extends StatefulWidget {
  const DetalPageEn({Key? key}) : super(key: key);

  @override
  State<DetalPageEn> createState() => _DetalPageEnState();
}

List<MudulasData> list = [
  MudulasData("Manzil", "[a'dres] n", "ad res, address; (speech) address, speech v Referral, Send (a p p ly) address - a meetin Say NU TQ at a meeting"),
  MudulasData("Boshqarmoq", "[ad’minista(r)] v ", "(manage) manage (dispense) send (give) B E RM.Administrationn. administration, Administration (government)Government. Admin is trative adj.Ma ' Muri, managementgoid .Administrator. administrator, administrator,"),
  MudulasData("Aniq", "(e'paerent) adj", "(seeming) visible, visible; (manifest) openly visible, obvious, clear; Heir is an indirect heir."),
  MudulasData("Ko'rinish", "[a'pie(r)]jv", "To appear, to come to the surface, to appear, to appear, to look like appearance n. to appear, to appear, to emerge, to come forward; (aspect) look, feel, look color photo."),
  MudulasData("Qabul qilish", "[ak'sept] v.", "to accept (agree) to agree. acceptable adj. agreeable, suitable; (ple a sing) collar d iga n , in the heart. Acceptance. acceptance.Accept-ationn. accepted. Acceptedadj.(um um )accepted."),
  MudulasData("Kirish", "[aekses] n", "access path, entry point (attack) attack .accessaryn. (a fte r th e fa ct)sherlk , co-participated (in a crime following an incident), ccessible adj. common, understandable acessionn. Sitting, riding (acquisition, acquiring, acquiring, having. accessoriesn. items."),
  MudulasData("Keyin", "[’afta(r)] in com b", "after , after . a fterbirth n. Companion, esh. after-dinner adj. a fterlifen.Life in the next world. after ath [aifte.mzee, -,m a:9]n. next afternoon. the second half of the day inth e - noon day, afternoon. aftershock repeated shaking. afterthought. an afterthought."),
  MudulasData("Agnostik", "[aeg’nostik] n", "Agnostic adj. of agnosticism. Agnostic is mn. agnosticism (an idealistic philosophical education that denies the objective world and the knowledge of its laws)"),
  MudulasData("Ajablanish", "[e'stomj] v", "I was surprised. astonishing adj. Amazing, surprising. astonishment n. surprise."),
  MudulasData("Jalb qilish", "[a'traakt] v", "To pull, to pull, to attract; to charm; to attract, to attract, to participate."),
  MudulasData("Ko'paytirish", "[o:g'ment] n", "To multiply, to enlarge; Augmentation n. increase, enlarge; to add."),
];

class _DetalPageEnState extends State<DetalPageEn> {
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
              repeat: false,

              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
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
        builder: (context) => DetalsPagesEn(
          mudulasData: mudulasData,
        ),
      ));
}

class CostumSeranch extends SearchDelegate {
  List<MudulasData> allData = [
    MudulasData("Manzil", "[a'dres] n", "ad res, address; (speech) address, speech v Referral, Send (a p p ly) address - a meetin Say NU TQ at a meeting"),
    MudulasData("Boshqarmoq", "[ad’minista(r)] v ", "(manage) manage (dispense) send (give) B E RM.Administrationn. administration, Administration (government)Government. Admin is trative adj.Ma ' Muri, managementgoid .Administrator. administrator, administrator,"),
    MudulasData("Aniq", "(e'paerent) adj", "(seeming) visible, visible; (manifest) openly visible, obvious, clear; Heir is an indirect heir."),
    MudulasData("Ko'rinish", "[a'pie(r)]jv", "To appear, to come to the surface, to appear, to appear, to look like appearance n. to appear, to appear, to emerge, to come forward; (aspect) look, feel, look color photo."),
    MudulasData("Qabul qilish", "[ak'sept] v.", "to accept (agree) to agree. acceptable adj. agreeable, suitable; (ple a sing) collar d iga n , in the heart. Acceptance. acceptance.Accept-ationn. accepted. Acceptedadj.(um um )accepted."),
    MudulasData("Kirish", "[aekses] n", "access path, entry point (attack) attack .accessaryn. (a fte r th e fa ct)sherlk , co-participated (in a crime following an incident), ccessible adj. common, understandable acessionn. Sitting, riding (acquisition, acquiring, acquiring, having. accessoriesn. items."),
    MudulasData("Keyin", "[’afta(r)] in com b", "after , after . a fterbirth n. Companion, esh. after-dinner adj. a fterlifen.Life in the next world. after ath [aifte.mzee, -,m a:9]n. next afternoon. the second half of the day inth e - noon day, afternoon. aftershock repeated shaking. afterthought. an afterthought."),
    MudulasData("Agnostik", "[aeg’nostik] n", "Agnostic adj. of agnosticism. Agnostic is mn. agnosticism (an idealistic philosophical education that denies the objective world and the knowledge of its laws)"),
    MudulasData("Ajablanish", "[e'stomj] v", "I was surprised. astonishing adj. Amazing, surprising. astonishment n. surprise."),
    MudulasData("Jalb qilish", "[a'traakt] v", "To pull, to pull, to attract; to charm; to attract, to attract, to participate."),
    MudulasData("Ko'paytirish", "[o:g'ment] n", "To multiply, to enlarge; Augmentation n. increase, enlarge; to add."),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetalPageEn(),));

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
            builder: (context) => DetalsPagesEn(mudulasData: mudulasData),
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
