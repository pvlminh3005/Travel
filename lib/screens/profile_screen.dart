import 'package:flutter/material.dart';
import 'package:travel/models/category_profile_model.dart';

class ProfileScreen extends StatelessWidget {
  final String _nameUser = 'Pham Vu Le Minh';
  final String _emailUser = 'pvlminh3005@gmail.com';

  Widget _buildCategoryProfile(
      BuildContext context, CategoryProfileModel category) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: Icon(category.icon, size: 30, color: Colors.white),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        title: Text(
          category.nameCategory,
          style: Theme.of(context).textTheme.body1,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'PROFILE',
          style: Theme.of(context).textTheme.title,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).primaryColor,
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 10,
                  child: IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.edit,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      ClipOval(
                        child: Image.network(
                          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/mh-celeb-name-changes-1567632828.png?crop=0.460xw:0.920xh;0,0&resize=640:*',
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width * .35,
                          height: MediaQuery.of(context).size.width * .35,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        _nameUser,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        _emailUser,
                        style: Theme.of(context).textTheme.subtitle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: listCategoriesProfile.length,
              itemBuilder: (BuildContext context, int index) {
                CategoryProfileModel category = listCategoriesProfile[index];
                return _buildCategoryProfile(context, category);
              },
              physics: NeverScrollableScrollPhysics(),
            ),
            // child: Container(
            //   color: Colors.red,
            //   alignment: Alignment.center,
            //   child: Center(
            //     child: ListView(
            //       children: listCategoriesProfile.map((category) {
            //         return _buildCategoryProfile(context, category);
            //       }).toList(),
            //     ),
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}
