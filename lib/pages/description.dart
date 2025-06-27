
import 'package:flutter/material.dart';

class DescriptionRestaurant extends StatelessWidget{
  const DescriptionRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
          child: Column(
            children: [
              restaurantImage(),
              restaurantInfo(),
              restaurantDesc(),
              buttonsBottom(),
              busHours(),
            ],
          ),
        ));
          
  }
}

Widget restaurantImage(){    
  PageController pageController = PageController();
      int curIndex = 0;
  return StatefulBuilder(
    builder: (context, setState) {
      

      List<String> images = [
        'assets/icons/r1.jpg',
        'assets/icons/r2.jpeg',
        'assets/icons/r3.jpg',
        'assets/icons/r1.jpg',
      ];
      return Container(
        height: 300,
        child: Stack(
          children: [
            PageView.builder(
             controller: pageController,
             onPageChanged: (index) {
              setState(() {
                curIndex = index;
              });
             },
             itemCount: images.length,
             itemBuilder: (context, index){
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(images[index]),
                    fit:BoxFit.cover,)
                ),
              );
             } 
             ),
            Positioned(
              top: 30,
              left: 20,
              child: CircleAvatar(
                backgroundColor: Colors.black54,
                child: IconButton(
                  onPressed: () => Navigator.pop(context) , 
                  icon: Icon(Icons.arrow_back,color: Colors.white),
              ),
            )
            ),
            Positioned(
              top: 30,
              right: 20,
              child: CircleAvatar(
                backgroundColor: Colors.red,
                child: IconButton(
                  onPressed: () {}, 
                  icon: Icon(Icons.favorite, color: Colors.white,),)
              ),
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  images.length,
                  (index) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    width: curIndex == index? 14:8,
                    height: curIndex == index? 14:8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: curIndex == index ? Colors.red : Colors.white,
                      border: curIndex == index? Border.all(color: Colors.white, width: 2): null,
                    ),
                  )
                  ),
              ),
            )
          ],
        ),
      );
    } );
}

Widget restaurantInfo(){
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("TAO Restaurant and Bar",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        ),
      SizedBox(height: 8,),
      Text(
        "178 Clarence St. Sydney NSW 2000,Australia",
        style: TextStyle(
          fontSize: 16,
          color: Colors.grey[600],
        ),
      ),
      SizedBox(height: 12,),
      Wrap(
        spacing: 5,
        runSpacing: 8,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: Colors.yellow, size: 20,),
              SizedBox(width: 4,),
              Text("4.5(204)  |",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.grey
              ),)
            ],
          ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.location_on, color: Colors.red,size: 20,),
            SizedBox(width: 2,),
            Text(
              '12 km  |',
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey[600],
              ),
            )
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.link,color: Colors.grey, size: 20,),
            SizedBox(width: 4,),
            Text(
              'Visit our website',
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey
              ),
            )
          ],
        )
        ],
      )
      ],
    ),
  );
}

Widget restaurantDesc(){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 12,),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey[600],
              height: 1.5,
            ),
        )
      ],
    ),
  );
}

Widget buttonsBottom (){
  return Container(
    margin: EdgeInsets.only(top: 20, left: 10, right: 50),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        actButton(
          icon: Icons.call,
          color: Colors.red,
        ),
        actButton(
          icon: Icons.email,
          color : Colors.red,
        ),
        actButton(
          icon: Icons.location_on, 
          color: Colors.red
          ),
          actButton(
            icon: Icons.share, 
            color: Colors.red
            ),
          actButton(
            icon: Icons.chat, 
            color: Colors.red)
      ],
    ),
  );
}

Widget actButton({
  required IconData icon,
  required Color color,
}) {
  return Container(
    width: 44,
    height: 44,
    decoration: BoxDecoration(
      color: Colors.grey.withOpacity(0.1),
      borderRadius: BorderRadius.circular(10)
    ),
    child: Icon(
      icon,
      color: color,
      size: 22,
    ),
  );
}

Widget busHours(){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Business Hours",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15,),
        Row(
          children: [
            Text("Open Now:",
            style: TextStyle(
              fontSize: 14,
              color: Colors.red
            ),
            ),
            SizedBox(width: 8,),
            Text("8.30 am - 10.00 pm",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
            ),
            SizedBox(width: 8,),
            Icon(
              Icons.keyboard_arrow_down,
              color : Colors.grey[600],
            )
          ],
        )
      ],
    ),
  );
}