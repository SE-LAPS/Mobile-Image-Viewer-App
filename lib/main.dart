import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

final List<String> imgList = [
  'https://www.tbsnews.net/sites/default/files/styles/big_2/public/images/2022/04/11/srilanka.jpg?itok=oZ-HOS5w&timestamp=1652509020',
  'https://bsmedia.business-standard.com/_media/bs/img/article/2022-04/11/full/1649699224-0764.jpg?im=Resize,width=480',
  'https://media-cldnry.s-nbcnews.com/image/upload/t_fit-760w,f_auto,q_auto:best/rockcms/2022-04/220414-sri-lanka-protest-jm-1131-d2d1c9.jpg',
  'https://images.wsj.net/im-540037?width=860&height=573',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaPFRFuVPRDABRZVAi9HJ9ZHQ6YFdR5q_DBQ&usqp=CAU',
  'https://www.imaphsy.com/wp-content/uploads/2022/04/Sri-Lanka-2.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7WfZN7_U5-mgsrndsgfxLerYnP_EkCs096w&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhB-WETKOtCpepJ3HhB3PLIjltQ4OQ05Q5pQ&usqp=CAU',
  'https://bsmedia.business-standard.com/_media/bs/img/article/2022-04/11/full/1649699224-0764.jpg?im=Resize,width=480',
  'https://images.thewest.com.au/publication/C-6735109/f0791d5d916aee052a5f7cb20dedeaf3104bf465-16x9-x0y0w1280h720.jpg',
];


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var widget;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green[700],
        title: Text("Sri Lanka Economic Crisis"),
      ),
      body: Container(

        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "HIGHLIGHTS",

                style: TextStyle(
                  color: Colors.yellow[700],
                  backgroundColor: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            CarouselSlider(
              items: imgList
                  .map((item) => Container(
                child: Center(
                  child: Image.network(
                    item,
                    fit: BoxFit.cover,
                    width: 20000,
                  ),
                ),
              ))
                  .toList(),
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: .8,
                enlargeCenterPage: true,
              ),
            ),
            SizedBox(
              height: 100,
            ),

            Text(
              'Implosion of Sri Lanka tiny economy',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  color: Colors.white),

            )

            //CarouselWithDotsPage(imgList: imgList),
          ],
        ),
      ),
    );
  }
}

