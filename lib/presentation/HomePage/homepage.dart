import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  bool _showLoading = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _showProgressIndicator() async {
    setState(() {
      _showLoading = true;
    });
    await Future.delayed(const Duration(seconds: 4));
    setState(() {
      _showLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent, // App bar color
          title: const Row(
            children: [
                Icon(
      Icons.menu,
      color: Colors.white,
      size: 27.0,
      semanticLabel: 'Text to announce in accessibility modes',
    ),
    SizedBox(
         width: 10,
    ),
              Text(
                'Deals',
                style: TextStyle(color: Colors.white), // App bar title color
              ),
            ],
          ),
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'TOP'),
              Tab(text: 'POPULAR'),
              Tab(text: 'FEATURED'),
            ],
            indicatorColor: Colors.white, // Tab bar indicator color
          ),
        ),
        body: TabBarView(controller: _tabController, children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: _showLoading
                  ? CircularProgressIndicator(
                      color: Colors.red[900], // Progress indicator color
                    )
                  : TabBarContent(),
            ),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: _showLoading
                ? CircularProgressIndicator(
                    color: Colors.red[900],
                  )
                : TabBarContent(),
          ))
        ]));
  }
}

class TabBarContent extends StatelessWidget {
  const TabBarContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CachedNetworkImage(
                    imageUrl:
                        "http://via.placeholder.com/350x150",
                    placeholder: (context, url) =>
                        new CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        new Icon(Icons.error),
                  ),
                  Text(
                    'This is Kalyan deal',
                    style: TextStyle(
                        fontSize: 15.0, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rs 500 Rs 600 17% Off',
                    style: TextStyle(
                        fontSize: 16.0, color: Colors.black),
                  ),
                  Text(
                    '2 Dec 2018',
                    style: TextStyle(
                        fontSize: 12.0, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Divider(color: Colors.grey[400]),
              const SizedBox(height: 10.0),
            ],
          );
          // Add more elements for other deals as needed
        },
      );
  }
}
