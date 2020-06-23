import 'package:flutter/material.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:makan_apa_app/page/home/components/more_restuarant_content.dart';
import 'package:makan_apa_app/widget/current_app_bar.dart';

class MoreRestaurant extends StatefulWidget {
  @override
  _MoreRestaurantState createState() => _MoreRestaurantState();
}

class _MoreRestaurantState extends State<MoreRestaurant> {
  List<int> data = [];
  int currentLength = 0;

  final int increment = 10;
  bool isLoading = false;

  @override
  void initState() {
    _loadMore();
    super.initState();
  }

  Future _loadMore() async {
    setState(() {
      isLoading = true;
    });
    // Add in an artificial delay
    await new Future.delayed(const Duration(seconds: 2));
    for (var i = currentLength; i <= currentLength + increment; i++) {
      data.add(i);
    }
    setState(() {
      isLoading = false;
      currentLength = data.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: currentAppBar("More Restaurant", Colors.black),
      body: LazyLoadScrollView(
            isLoading: isLoading,
            onEndOfPage: () => _loadMore(),
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, position) {
                if (isLoading && position >= data.length - 1) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return MoreRestaurantContent(position);
              },
            ),
          ),
    );
  }
}

// class DemoItem extends StatelessWidget {
//   final int position;

//   const DemoItem(
//     this.position, {
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 Container(
//                   color: Colors.grey,
//                   height: 40.0,
//                   width: 40.0,
//                 ),
//                 SizedBox(width: 8.0),
//                 Text("Item $position"),
//               ],
//             ),
//             Text(
//                 "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed vulputate orci. Proin id scelerisque velit. Fusce at ligula ligula. Donec fringilla sapien odio, et faucibus tortor finibus sed. Aenean rutrum ipsum in sagittis auctor. Pellentesque mattis luctus consequat. Sed eget sapien ut nibh rhoncus cursus. Donec eget nisl aliquam, ornare sapien sit amet, lacinia quam."),
//           ],
//         ),
//       ),
//     );
//   }
// }
