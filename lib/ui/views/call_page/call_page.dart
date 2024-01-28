import 'package:assessment/ui/views/call_page/call_page_model.dart';
import 'package:assessment/ui/views/call_page/headers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CallPageView extends StatelessWidget {
  const CallPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CallPageModel>.reactive(
      viewModelBuilder: () => CallPageModel(),
      builder: (context, viewModel, child) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 14),
            child: Column(children: [
              const Headers(),
              const SizedBox(
                height: 25,
              ),
              Stack(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height * 0.59,
                      width: double.infinity,
                      child: Image.asset(
                        'images/rec.png',
                      )),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Row(children: [
                      Image.asset(
                        'images/re.png',
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'REC  00:12:36',
                        style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ]),
                  ),
                  
                  Positioned(
                      bottom: 30,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Container(
                          width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                color: Colors.black12.withOpacity(0.7)),
                            child:  Padding(
                              padding: EdgeInsets.symmetric(horizontal:8.0, vertical:14),
                              child: Row(
                                children: [
                                   Image.asset('images/wav.png'),
                                   SizedBox(
                                    width: 14,
                                   ),
                                   Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Now',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.7),
                                            fontSize: 7,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text(
                                        'Thank you everyone for joining the design critique meeting. I\n want everyone’s opinion so please start !',
                                        style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'Inter',
                                            color: Colors.white.withOpacity(0.7),
                                            fontWeight: FontWeight.w400),
                                            textAlign: TextAlign.start,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )),
                      ))
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    viewModel.images.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Image.asset(
                        viewModel.images[index],
                        width: 75,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.094,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10, spreadRadius: 1, color: Colors.black54),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                        radius: 17,
                        backgroundColor: Color(0xFF0060FF),
                        child: Icon(
                          Icons.mic_none_sharp,
                          color: Colors.white,
                        )
                        // Image.asset('images/mic.png'),
                        ),
                    // SizedBox(width: 20,),
                    const CircleAvatar(
                        radius: 17,
                        backgroundColor: Color(0xFF0060FF),
                        child: Icon(
                          Icons.video_call_outlined,
                          color: Colors.white,
                        )
                        // Image.asset('images/mic.png'),
                        ),
                    Container(
                      height: 30,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                          color: Color(0xFFEB5757)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 14.0, vertical: 8),
                        child: Text(
                          'End Call',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ),
                    ),
                    CircleAvatar(
                        radius: 17,
                        backgroundColor: const Color(0xFFDFEBFF),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(4)),
                                border: Border.all(
                                    width: 1.3,
                                    color: const Color(0xFF0060FF))),
                            child: const Icon(
                              Icons.file_upload_outlined,
                              size: 14,
                              color: Color(0xFF0060FF),
                            ),
                          ),
                        )
                        // Image.asset('images/mic.png'),
                        ),
                    CircleAvatar(
                        radius: 17,
                        backgroundColor: const Color(0xFFDFEBFF),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(4)),
                                  border: Border.all(
                                      width: 1.3,
                                      color: const Color(0xFF0060FF))),
                              child: Image.asset(
                                'images/dots.png',
                                height: 14,
                              )),
                        )
                        // Image.asset('images/mic.png'),
                        ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
