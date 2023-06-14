import 'package:flutter/material.dart';
import 'package:wallpaper_hub/Model/categoeries_Model.dart';
import 'package:wallpaper_hub/data/data.dart';
import 'package:wallpaper_hub/utils/colors.dart';
import 'package:wallpaper_hub/widgets/widget.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  TextEditingController searchController=TextEditingController();
  List<CategoriesModel> categories=[];

  @override
  void initState() {
    // TODO: implement initState
    categories=getCateries();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            elevation: 0.0,
            centerTitle: true,
            title: BrandName(),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: SizedBox(
                    height: 45,
                    child: TextField(
                      enableSuggestions: true,
                      autocorrect: true,
                      cursorColor: AppColor.mainColor,
                      style: const TextStyle(fontFamily: "Fontmirror",color: AppColor.mainColor,decorationThickness: 0),
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: "Search Categories",
                        hintStyle: const TextStyle(fontFamily: "Fontmirror",color: AppColor.mainColor),
                        contentPadding: const EdgeInsets.only(left: 20),
                        suffixIcon: const Icon(Icons.search,color: AppColor.mainColor,),
                        filled: true,
                        fillColor: AppColor.mainColor.withOpacity(0.1),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const  BorderSide(
                                color: AppColor.mainColor
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const  BorderSide(
                                color: AppColor.mainColor
                            )
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        )
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 80,
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                      itemCount: categories.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return CategoriesTile(imgUrl: categories[index].categoriesName, title: categories[index].categoriesImageURL);
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategoriesTile extends StatelessWidget {

  String imgUrl,title;
  CategoriesTile({Key? key,required this.imgUrl,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 4),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(imgUrl,height: 50,width: 100,fit: BoxFit.fill,),
          ),
          Container(
            color: AppColor.black26,
            height: 50,width: 100,
            alignment: Alignment.center,
            child:Text(title) ,
          )
        ],
      ),
    );
  }
}

