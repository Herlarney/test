import 'package:assessment/ui/views/call_page/call_page_model.dart';
import 'package:assessment/ui/views/chat_page/chat_page_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ChatPageView extends StatelessWidget {
  const ChatPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ChatPageModel>.reactive(
      viewModelBuilder: () => ChatPageModel(),
      builder: (context, viewModel, child) => Scaffold(
        backgroundColor: const Color(0xFF4A5767),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: viewModel.setCView,
                      child: Container(
                        height: 47,
                        width: 160,
                        decoration: BoxDecoration(
                            color: viewModel.view == Views.chat
                                ? const Color(0xFF49627D)
                                : const Color(0xFF4A5767),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(7))),
                        child: const Center(
                            child: Text(
                          'Chat(4)',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )),
                      ),
                    ),
                    InkWell(
                      onTap: viewModel.setPView,
                      child: Container(
                        height: 47,
                        width: 160,
                        decoration: BoxDecoration(
                            color: viewModel.view == Views.participant
                                ? const Color(0xFF49627D)
                                : const Color(0xFF4A5767),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(7))),
                        child: const Center(
                            child: Text(
                          'Participant',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: Colors.white,
                ),
                const SizedBox(height: 10),
                viewModel.view == Views.chat
                    ? Container(
                        width: 247,
                        height: 48,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(children: [
                            InkWell(
                              onTap: viewModel.setGsubView,
                              child: Container(
                                  width: 119,
                                  height: 48,
                                  decoration: BoxDecoration(
                                      color: viewModel.subView == SubView.group
                                          ? const Color(0xFF49627D)
                                          : Colors.white,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      'Group',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          color:
                                              viewModel.subView == SubView.group
                                                  ? Colors.white
                                                  : const Color(0xFF49627D)),
                                    ),
                                  )),
                            ),
                            InkWell(
                              onTap: viewModel.setPsubView,
                              child: Container(
                                width: 119,
                                height: 48,
                                decoration: BoxDecoration(
                                    color: viewModel.subView == SubView.personal
                                        ? const Color(0xFF49627D)
                                        : Colors.white,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20))),
                                child: Center(
                                  child: Text(
                                    'Personal',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        color: viewModel.subView ==
                                                SubView.personal
                                            ? Colors.white
                                            : const Color(0xFF49627D)),
                                  ),
                                ),
                              ),
                            )
                          ]),
                        ),
                      )
                    : const SizedBox.shrink(),
                const SizedBox(
                  height: 10,
                ),
                viewModel.view == Views.chat
                    ? const Row(
                        children: [
                          SizedBox(
                            width: 120,
                            child: Divider(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Messages',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 120,
                            child: Divider(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    : const SizedBox.shrink(),
                viewModel.view == Views.chat
                    ? const SizedBox(height: 7)
                    : SizedBox.shrink(),
                viewModel.view == Views.chat
                    ? Expanded(
                        child: ListView(
                        children: const [
                          ChatCard(
                            name: 'Coesy',
                            image: 'images/rec1.png',
                            message: 'Hello Guys! Whats your\n opinion?',
                            messageType: Message.receiver,
                          ),
                          ChatCard(
                            name: 'John',
                            image: 'images/rec2.png',
                            message: 'Images are better',
                            messageType: Message.receiver,
                          ),
                          ChatCard(
                            name: 'You',
                            image: 'images/rec3.png',
                            message: 'Yes, It will decrease the loading',
                            messageType: Message.sender,
                          ),
                          ChatCard(
                            name: 'Jack',
                            image: 'images/rec4.png',
                            message:
                                'Anyone is up for illustrations. I\n think there are less relatable\n images according to our brand.',
                            messageType: Message.receiver,
                          ),
                          ChatCard(
                            name: 'Coesy',
                            image: 'images/rec1.png',
                            message: 'Hello Guys! Whats your\n opinion?',
                            messageType: Message.receiver,
                          ),
                        ],
                      ))
                    : Container(
                        height: MediaQuery.of(context).size.height * 0.78,
                        child: ListView.builder(
                          itemCount: viewModel.participant.length,
                          itemBuilder: (context, index) => Container(
                              margin: EdgeInsetsDirectional.all(7),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          child: Image.asset(viewModel
                                              .participant[index].image!),
                                          backgroundColor: Colors.transparent,
                                        ),
                                        SizedBox(width: 20,),
                                        Text(
                                            viewModel.participant[index].name!),
                                      ],
                                    ),
                                    Row(children: [
                                      Icon(
                                        Icons.mic_off_outlined,
                                        color:
                                            viewModel.participant[index].color,
                                      ),
                                      SizedBox(width: 10,),
                                      Icon(
                                        Icons.video_camera_back_outlined,
                                        color: viewModel
                                            .participant[index].other,
                                      )
                                    ]),
                                  ],
                                ),
                              )
                              //  ListTile(
                              //   leading: CircleAvatar(
                              //     backgroundImage: AssetImage(
                              //         viewModel.participant[index].image!),
                              //   ),
                              //   title: Text(viewModel.participant[index].name!),
                              //     trailing: Row(children: [
                              //         Icon(Icons.mic_off_outlined, color: viewModel.participant[index].color,)
                              //       ]),
                              // ),
                              ),
                        ),
                      ),
                viewModel.view == Views.chat
                    ? SizedBox(
                        height: 30,
                        child: Row(
                          children: [
                            Image.asset(
                              'images/Group1.png',
                            ),
                            const Text(
                              'John is typing.....',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      )
                    : SizedBox.shrink(),
                viewModel.view == Views.chat
                    ? Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Color(0xFF49627D),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 10),
                          child: Row(children: [
                            Image.asset('images/Vector.png'),
                            const SizedBox(
                                height: 20,
                                child: const VerticalDivider(
                                  color: Colors.white,
                                )),
                            // const SizedBox(
                            //   width: 10,
                            // ),
                            SizedBox(
                              width: 200,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Write message here',
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF49627D)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF49627D)),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Image.asset('images/Vector1.png')),
                          ]),
                        ),
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChatCard extends StatelessWidget {
  final String? name;
  final String? image;
  final String? message;
  final Message messageType;
  const ChatCard({
    required this.name,
    required this.image,
    required this.message,
    required this.messageType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: messageType == Message.receiver
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(image!),
                  radius: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name!,
                        style: const TextStyle(
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color: Color(0xFF49627D),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 12.0, left: 8, right: 40, bottom: 12),
                          child: Text(
                            message!,
                            style: const TextStyle(
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset('images/Group.png'),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        name!,
                        style: const TextStyle(
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color: Color(0xFF131B26),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 12.0, left: 12, right: 40, bottom: 12),
                          child: Text(
                            message!,
                            style: const TextStyle(
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
