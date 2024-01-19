import 'package:flutter/material.dart';


class searchPage extends StatelessWidget{
  const searchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchBox(),
      // bottomNavigationBar: NavigationBox(),
    );
  }
}
class SearchBox extends StatefulWidget {
  const SearchBox({Key? key}) : super(key: key);
  @override
  _SearchBox createState() => _SearchBox();
}
class _SearchBox extends State<SearchBox>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchAnchor(
              builder: (BuildContext context, SearchController controller) {
                return SearchBarTheme(
                  data: SearchBarThemeData(
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xFFFBFE).withOpacity(1.0),
                    ),
                  ),
                  child: SearchBar(
                    hintText: "Powered By 百鸽",
                    controller: controller,
                    padding: const MaterialStatePropertyAll<EdgeInsets>(
                        EdgeInsets.symmetric(horizontal: 16.0)),
                    onTap: () {
                      controller.openView();
                    },
                    onChanged: (_) {
                      controller.openView();
                    },
                    leading: const Icon(Icons.menu),
                    trailing: <Widget>[
                      const Icon(Icons.search),
                    ],

                  ),
                );
              },
              suggestionsBuilder:
                  (BuildContext context, SearchController controller) {
                return List<ListTile>.generate(5, (int index) {
                  final String item = 'item $index';
                  return ListTile(
                    title: Text(item),
                    onTap: () {
                      setState(() {
                        controller.closeView(item);
                      });
                    },
                  );
                });
              },
              viewHintText: "卡片名称……",
            )
        )
    );
  }
}