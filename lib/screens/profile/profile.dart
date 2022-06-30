import 'package:flutter/material.dart';
import '/models/profile.dart';
import '/screens/profile/widgets/custom_grid.dart';
import '/screens/profile/widgets/person_info.dart';
import '/screens/profile/widgets/tab_sliver_delegate.dart';

class ProfilePage extends StatelessWidget {
  final profile = Profile.generateProfile();
  final tabs = ['Most Popular', 'View All'];
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: PersonInfo(profile),
              ),
              SliverPersistentHeader(
                delegate: TabSliverDelegate(
                  TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey[400],
                    indicatorColor: Colors.blue,
                    isScrollable: true,
                    tabs: tabs
                        .map((e) => Tab(
                              child: Text(
                                e,
                                style: const TextStyle(fontSize: 16),
                              ),
                            ))
                        .toList(),
                  ),
                ),
                pinned: true,
              )
            ];
          },
          body: TabBarView(
            children: [
              CustomGrid('Most Popular', profile.creations!),
              CustomGrid('View All', profile.collections!),
            ],
          ),
        ),
      ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: _buildIcon(Icons.arrow_back_ios_outlined),
    actions: [
      _buildIcon(Icons.more_vert_outlined),
    ],
  );
}

IconButton _buildIcon(IconData icon) {
  return IconButton(
    onPressed: () {},
    splashRadius: 25,
    icon: Icon(
      icon,
      color: Colors.black,
      size: 20,
    ),
  );
}
