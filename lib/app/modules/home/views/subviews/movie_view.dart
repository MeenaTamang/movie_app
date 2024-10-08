import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/app/core/common_widgets/preview_card_image.dart';
import 'package:movie_app/app/core/values/s_spacing.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MovieView extends GetView{
  const MovieView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(

        child: SingleChildScrollView(
          child: Column(
            children: [

              CarouselSlider(
                options: CarouselOptions(height: 400.0, autoPlay: true,
                viewportFraction: 1.0),
                  items: [1,2,3,4,5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return 

                      Stack(

                        children: [
                          Positioned.fill(child: PreviewCardImage(url: '',)),
                          Align(
                            alignment: Alignment.bottomLeft,

                            child: Container(
                              padding: const EdgeInsets.all(16.0),
                              decoration: BoxDecoration(boxShadow:[
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                  ),
                        ]),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                
                                children: [
                                  Text('Inside out', style: Get.textTheme.titleLarge,),
                                  Text('Jan 27 2024',style: Get.textTheme.bodyMedium,),
                                  SmoothPageIndicator(
                                      controller: PageController(
                                        initialPage: i-1),  // PageController
                                      count:  5,
                                      effect: ExpandingDotsEffect(),  // your preferred effect
                                      onDotClicked: (index){
                                      }
                                    ),
                              
                              ],),
                            ),
                          )
                        ],
                      );
                      
                      // Container(
                      //   width: MediaQuery.of(context).size.width,
                      //   margin: EdgeInsets.symmetric(horizontal: 5.0),
                      //   decoration: BoxDecoration(
                      //     color: Color.fromARGB(255, 160, 133, 201)
                      //   ),
                      //   child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                      //   );
                    },
                  );
                  }).toList(),
              ),

              

              Row(
                children: [
                  SSpacing.smW,
                  Text('Popular Movies',
                  style: Get.textTheme.titleLarge,
                
                  ),
                  const Spacer(),

                  Text('see all',
                  style: Get.textTheme.bodyMedium,
                  ),
                  Icon(Icons.arrow_forward_ios, size: 10),
                  SSpacing.smW,

                ],
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 150,
                      height: 200,
                      color: Color.fromARGB(255, 160, 133, 201),
                    ),
                    SSpacing.smW,
                    Container(
                      width: 150,
                      height: 200,
                      color: Color.fromARGB(255, 160, 133, 201),
                    ),
                    SSpacing.smW,
                    Container(
                      width: 150,
                      height: 200,
                      color: Color.fromARGB(255, 160, 133, 201),
                    ),
                    SSpacing.smW,
                    Container(
                      width: 150,
                      height: 200,
                      color: Color.fromARGB(255, 160, 133, 201),
                    ),
                    SSpacing.smW,
                  ],
                ),
              )
            ],
          )
          ),
      )
    );
  }
}
