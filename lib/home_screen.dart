import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:elevation_task/bar_chart.dart';
import 'package:elevation_task/config_color.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //curved bottom navigation bar items(icons)
    final items = [
      const Icon(
        Icons.home,
        size: 30,
      ),
      const Icon(
        Icons.book,
        size: 30,
      ),
      const Icon(
        Icons.history,
        size: 30,
      ),
      const Icon(
        Icons.people,
        size: 30,
      ),
    ];
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey.shade50,
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(iconTheme: const IconThemeData(color: Colors.white)),
            child: CurvedNavigationBar(
              height: 65,
              color: primaryColor,
              backgroundColor: Colors.transparent,
              buttonBackgroundColor: primaryColor,
              items: items,
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://wallpapers.com/images/hd/cool-profile-picture-ld8f4n1qemczkrig.jpg'),
                      radius: 30,
                      child: Text(''),
                    ),
                    title: const Text('Essa Afridi'),
                    subtitle: const Text('view profile'),
                    trailing: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Icon(
                          Icons.settings,
                          size: 25,
                        )),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        'Daily Revenue',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text('(PKR)'),
                  ],
                ),
                Container(
                    height: 300,
                    decoration: const BoxDecoration(color: Colors.white),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 30),
                    child: MyHomePage()
                    // charts.BarChart(
                    //   series,
                    //   animate: true,
                    //   behaviors: [
                    //     // charts.ChartTitle('Daily Revenue', titleStyleSpec: charts.TextStyleSpec(color: charts.Color.black,)),
                    //     // charts.RangeAnnotation([charts.LineAnnotationSegment(50, charts.RangeAnnotationAxisType.measure, color: charts.MaterialPalette.white, endLabel: '100%')])
                    //   ],
                    // ),
                    ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Active Orders ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          Text(
                            '(15)',
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: const Color(0xff000e676),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Add Orders',
                            style: TextStyle(
                                color: Color(0xff000e676),
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                ExpansionTile(
                  title: const Text('Active Orders'),
                  children: [
                    const Divider(
                      thickness: 2,
                    ),
                    ListTile(
                      selectedColor: Colors.white,
                      title: const Text(
                        'Marvin McKinney',
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: Row(
                        children: const [
                          Icon(
                            Icons.calendar_month,
                            size: 16,
                          ),
                          Text('Due date 28 march,2023')
                        ],
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      selectedColor: Colors.white,
                      title: const Text(
                        'Marvin McKinney',
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: Row(
                        children: const [
                          Icon(
                            Icons.calendar_month,
                            size: 16,
                          ),
                          Text('Due date 28 march,2023')
                        ],
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      selectedColor: Colors.white,
                      title: const Text(
                        'Marvin McKinney',
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: Row(
                        children: const [
                          Icon(
                            Icons.calendar_month,
                            size: 16,
                          ),
                          Text('Due date 28 march,2023')
                        ],
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      selectedColor: Colors.white,
                      title: const Text(
                        'Marvin McKinney',
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: Row(
                        children: const [
                          Icon(
                            Icons.calendar_month,
                            size: 16,
                          ),
                          Text('Due date 28 march,2023')
                        ],
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}

//
// final List<BarChartModel> data = [
//   BarChartModel(
//     price: 2000,
//     days: 24.toString(),
//     color: charts.ColorUtil.fromDartColor(Colors.amber),
//   ),
//   BarChartModel(
//     price: 5000,
//     days: 25.toString(),
//     color: charts.ColorUtil.fromDartColor(Colors.amber),
//   ),
//   BarChartModel(
//     price: 3000,
//     days: 26.toString(),
//     color: charts.ColorUtil.fromDartColor(Colors.amber),
//   ),
//   BarChartModel(
//     price: 6000,
//     days: 27.toString(),
//     color: charts.ColorUtil.fromDartColor(Colors.amber),
//   ),
//   BarChartModel(
//     price: 4000,
//     days: 28.toString(),
//     color: charts.ColorUtil.fromDartColor(Colors.amber),
//   ),
//   BarChartModel(
//     price: 4800,
//     days: 29.toString(),
//     color: charts.ColorUtil.fromDartColor(Colors.amber),
//   ),
//   BarChartModel(
//     price: 3000,
//     days: 30.toString(),
//     color: charts.ColorUtil.fromDartColor(Colors.amber),
//   ),
// ];

// List<charts.Series<BarChartModel, String>> series = [
//   charts.Series(
//     id: "price",
//     data: data,
//     domainFn: (BarChartModel series, _) => series.days,
//     measureFn: (BarChartModel series, _) => series.price,
//     colorFn: (BarChartModel series, _) => series.color,
//   ),
// ];
