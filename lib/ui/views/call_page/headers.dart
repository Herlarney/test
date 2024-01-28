import 'package:assessment/ui/views/chat_page/chat_page.dart';
import 'package:assessment/ui/views/chat_page/chat_page_model.dart';
import 'package:flutter/material.dart';

class Headers extends StatelessWidget {
  const Headers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
             BoxShadow(
                blurRadius: 10,
                spreadRadius: 1,
                color: Colors.black54),
          ],
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: const Color(0xFF4A5767),
                    borderRadius: BorderRadius.circular(2)),
                child: const Center(
                    child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                  size: 10,
                ))),
            Row(children: [
              Container(
                height: 32,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: const Color(0xFFA3A8AD)),
                  color: const Color(0xFFDFEBFF),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(children: [
                    Icon(
                      Icons.link,
                      color: Colors.blue,
                      size: 17,
                    ),
                     SizedBox(
                      width: 10,
                    ),
                    VerticalDivider(color: Colors.blue),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'cem-jnmt',
                      style: TextStyle(
                          fontSize: 11, fontWeight: FontWeight.w500, color: Colors.blue,),
                    )
                  ]),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 21,
                width: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: const Color(0xFFA3A8AD)),
                  color: const Color(0xFF4A5767),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment:
                          MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 10,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '15+',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ]),
                ),
              ),
            ]),
            Stack(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> const ChatPageView()));
                  },
                  child: Container(
                    height: 30,
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.message_outlined,
                            size: 20,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Positioned(
                    top: 3,
                    right: 2,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 6,
                      child: Text(
                      '4',
                      style: TextStyle(
                          fontSize: 8, fontWeight: FontWeight.w500, color: Colors.white,),
                    ),
                    ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
