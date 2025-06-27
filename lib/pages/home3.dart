import 'package:business_dir/models/category_model.dart';
import 'package:business_dir/pages/description.dart';
import 'package:business_dir/pages/review.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget
{
  const Home({super.key});

  @override 
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              HeaderSection2(),

              SearchSection2(),

              CategorySection2(),

              PromotionalBanner(),

              BusinessSection(),
            ],
          ),
        )
      ),
      bottomNavigationBar: CustomBar(),
    );
  }
}

Widget HeaderSection2()
{
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi Liam Anderson",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
              fontWeight: FontWeight.w400
              ),
            ),
            Text("Welcome Back!",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),)
          ],
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            Icons.notifications_outlined,
            size: 24,
            color: Colors.black,
          ),
        )
      ],
    ),
  );
}

Widget SearchSection2()
{
  return Container(
    height: 42,
    width: double.infinity,
    margin: EdgeInsets.only(left:20, top: 10),
    decoration: BoxDecoration(
    color: Colors.white,
    ),
    child: 
        Row(
          children: [
            Expanded(
              child: TextField(
                autofocus: false,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[100],
                    contentPadding: EdgeInsets.all(10),
                    hintText: "Search for locations",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14
                      ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                      ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Icon(Icons.search,
                    color: Colors.grey[600],
                    size: 20,),
                  
                 ),
               ),
                 ),
            ),
            SizedBox(width: 10,),
            Container(
              margin: EdgeInsets.only(right: 10),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Color(0xFFFF8A80),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.tune,
              size: 20,
              color: Colors.white,),
            
              ),
          ),
            )
          ],
        ),
 );
}

Widget CategorySection2()
{
   
  return Container(
    height: 270,
    width: 400,
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Categories",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
             ),
            ),
            GestureDetector(
              onTap: (){},
              child: Text("View All",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),),
            )
          ],
        ),
        SizedBox(height: 16,),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            childAspectRatio: 0.6,
            crossAxisSpacing: 10,
            mainAxisSpacing: 15,
          ), 
          itemCount: categories.length,
          itemBuilder: (context, index){
            final category = categories[index];
            return CategoryWidget(category);
          }
          )
      ],
    ),
  );

}

Widget CategoryWidget(CategoryItem category)
{
  return GestureDetector(
    onTap: () {
      print('Tapped on ${category.label}');
    },
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            category.icon,
            color: category.color,
            size: 24,
          ),
        ),
        SizedBox(height: 10,),
            Flexible(
              child: Text(
              category.label,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[700],
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
                        ),
            ),
          
            
      ],
    ),
  );
  
}

Widget PromotionalBanner()
{
  return GestureDetector(
    onTap: () {
      print("banner clicked");
    },
    child: SizedBox(
  width: 900, // or specify a custom width like 400
  child: Stack(
    children: [
    Container(
            width: double.infinity, // or specify a custom width like 400

      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFFE57373),
            const Color(0xFFEF5350),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFE57373).withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 4),
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Connect with",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "15+ Million Customers",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "On Locale",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w300
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'List your business for free',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    ),
    Positioned(
      right: 40, 
      top: 27,   
      child: Container(
        width: 70,
        height: 110,
        child: Image.asset(
            'assets/icons/man_.png',
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(
                Icons.person,
                size: 70,
                color: Colors.white,
              );
            },
          ),
        ),
      ),
    ]
  ),
),
  );
}

Widget BusinessSection() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Nearby Business",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            ),
            GestureDetector(
              onTap: () {
                print("View All clicked");
              },
              child: Text(
                "View All",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFFE57373),
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 16,),
        Row(
          children: [
            Expanded(
              child: Business_Card( imagePath: 'assets/icons/mc.png',
                businessName: 'McDonald\'s',
                rating: '4.5',
                distance: '0.5 km',
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Business_Card(
                imagePath: 'assets/icons/bk.jpg',
                businessName: 'Burger King',
                rating: '4.2',
                distance: '1.2 km',
              ),
            ),
          ],
        )
      ],
    )
  );
}

Widget Business_Card({
  required String imagePath,
  required String businessName,
  required String rating,
  required String distance,
}) 
{
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(12),
      child: Container(
          height: 140,
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.grey[300],
                  child: Image.asset(
                    imagePath,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(
                                Icons.store,
                                size: 40,
                                color: Colors.grey,
                              );
                            },
                  ),
                ),
                 ),
                 Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 4,  horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(businessName,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 12,
                              color: Colors.orange,
                            ),
                            SizedBox(width: 2,),
                            Text(
                              rating,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey[600],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                 )
                
            ],
          ),
    ),
    )
  );
}
     
Widget CustomBar()
{
  int selected = 0;
  return StatefulBuilder(
    builder: (context, setState) {
      return Container(
        height: 45,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 5,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = 0;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(    
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.home,
                  size: 30,
                  color: selected== 0 ? Color(0xFFE57373) : Colors.grey,
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ReviewPerformance()));
                  setState(() {
                    selected = 1;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color:Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.favorite,
                    size: 30,
                    color: selected == 1? Color(0xFFE57373) : Colors.grey,
                  ),
                ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> DescriptionRestaurant()));
                setState((){
                  selected = 2;
                });
              },
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color:Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.search,
                  size: 30,
                  color: selected == 2? Color(0xFFE57373) : Colors.grey,

                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState((){
                  selected = 3;
                });
              },
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color:Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.person,
                  size: 30,
                  color: selected == 3? Color(0xFFE57373) : Colors.grey,

                ),
              ),
            )
          ],
        ),
      );
    }

    );
}