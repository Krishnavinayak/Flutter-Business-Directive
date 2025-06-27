
import 'package:flutter/material.dart';

class ReviewPerformance extends StatelessWidget {
  const ReviewPerformance({super.key});

  @override   
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          }, 
          icon: Icon(Icons.arrow_back_ios, color: Colors.black,size: 20,)
          ),
          title: Text(
            "Review",
            style: TextStyle(
              fontSize: 20,
              fontWeight:FontWeight.bold,
            ),
          ),
          centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            reviewOverview(),
            writeReview(),
            personReview(),
          ]
        ),
      ),
    );
  }
}

Widget reviewOverview() {
  return Container(
    height: 175,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
        color: Colors.grey,
        width: 0.2,
      ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            spreadRadius: 1,
            offset: Offset(0, 4)
    
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
        
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20,top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, bottom: 2),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("4.5", 
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 7, left: 4),
                            child: Text("/5",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[500],
                            ),),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 0),
                      child: Text("Based on 204 review",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[500]
                      ),),
                    ),
                    SizedBox(height: 6,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                      child: Row(
                        children: List.generate(5, (index){
                          return Icon(
                          Icons.star,
                          color: index < 4 ? Colors.amber : Colors.grey[200],
                          size: 16,
                          );
                        }
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Column(
                  children: [
                    buildRatingBar(5, 1),
                    SizedBox(height: 8,),
                    buildRatingBar(4,0.60),
                    SizedBox(height: 8,),
                    buildRatingBar(3,0.30),
                    SizedBox(height: 8,),
                    buildRatingBar(2,0.15),
                    SizedBox(height: 8,),
                    buildRatingBar(1,0.05),
                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
}



Widget buildRatingBar(int stars, double ratings){
  return Row(
    children: [
      Text('$stars',
      style: TextStyle(
        fontSize: 12,
        color: Colors.grey[600],
        fontWeight: FontWeight.w500,
      ),
      ),
      SizedBox(width: 8,),
      Expanded(
        child: Container(
          height: 6,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(3),
          ),
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: ratings,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            
          ),
        )
      ),
      SizedBox(height: 20,),

    ],
  );
}

Widget writeReview() {
  return Container(
    width: 400,
    height: 50,
    alignment: Alignment.center,
    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.grey,
        width: 0.2,
      ),
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.03),
          spreadRadius: 1,
          blurRadius: 8,
          offset: Offset(0, 4),
        )
      ],
    ),
    child:Text(
        "Write a review",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
  );
}

Widget personReview() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.grey,
        width: 0.2,
      ),
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.03),
          spreadRadius: 1,
          blurRadius: 8,
          offset: Offset(0, 4),
        )
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset('assets/icons/avatar1.png',
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 12,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ethan Matthews",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                    ),
                    SizedBox(height: 2,),
                    Text("5 days ago",
                    style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(5, (index) => 
                Icon(
                  Icons.star,
                  size: 16,
                  color: Colors.amber,
                )
              ),
            ),
          ],
        ),
       SizedBox(height: 20,),
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("SO DELICIOUS",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w500
          ),
          ),
          SizedBox(height: 10,),
          Text("Wow!! Thankyou so much for a beautiful dinner and amazing service. Will definitely be coming back with more family and friends. The food was delicious complements to the chef. And your staff was very helpful and polite. Great service we had a great time. Beautiful decor and in a nice spot in the city. All of the food we chose was delicious. We were very impressed",
          style: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.w300,
            fontSize: 12
          ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                child: Image.asset(
                  'assets/icons/f1.jpeg',
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              ClipRRect(
                child: Image.asset(
                  'assets/icons/f2.jpeg',
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              ClipRRect(
                child: Image.asset('assets/icons/f3.jpg',
                width: 60,
                height: 60,
                fit: BoxFit.cover,),
              ),
              ClipRRect(
                child: Image.asset('assets/icons/f4.png',
                width: 60,
                height: 60,
                fit: BoxFit.cover,),
              )
            ],
          ),
          SizedBox(height: 20,)
        ],
       ),
       Padding(
         padding: const EdgeInsets.symmetric(vertical: 8),
         child: Divider(
           color: Colors.grey[300],
           thickness: 0.5,
           height: 1,
         ),
       ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset('assets/icons/avatar2.png',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 12,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Sophie Williams",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                    ),
                  SizedBox(height: 2,),
                  Text("5 days ago",
                    style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ],
          ),
          Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(5, (context) => Icon(
                    Icons.star,
                    size: 16,
                    color: Colors.amber,
                  )
                )
              )
        ],
      ),
      SizedBox(height: 12,),
      Text("SO DELICIOUS",
      style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w500
          ),
      )
      ],
    ),
  );
}