import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:window_manager/window_manager.dart';

class FrameWindow extends StatefulWidget {
  const FrameWindow({super.key});

  @override
  State<FrameWindow> createState() => _FrameWindowState();
}

class _FrameWindowState extends State<FrameWindow> {
  late List<Color> color;

  @override
  void initState() {
    super.initState();
    color = [
      Colors.white,
      Colors.white,
    ];
  }

  void randow() {
    color = [
      const Color(0xFF476DFF),
      const Color(0xFFA283FF),
    ];
    setState(() {});
  }

  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Colors.black,
          ),
          Lottie.network(
            'https://assets-v2.lottiefiles.com/a/6eb57068-116b-11ee-a55a-9335f156a1e7/Cv5U5UHtrl.json',
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black12,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: SizedBox(
                  width: 240,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white.withOpacity(.36),
                            border: Border.all(color: Colors.white30),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.white38,
                                blurRadius: 10,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              "images/header.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 40,
                        child: TextField(
                          controller: TextEditingController(text: "944095635"),
                          style: const TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            prefixIconConstraints: const BoxConstraints(
                                maxWidth: 28, minWidth: 28),
                            prefixIcon: SvgPicture.asset(
                              "images/logo-octocat.svg",
                              width: 18,
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                            suffixIconConstraints: const BoxConstraints(
                              maxWidth: 28,
                              minWidth: 28,
                            ),
                            suffixIcon: SvgPicture.asset(
                              "images/expand_more.svg",
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 40,
                        child: TextField(
                          controller: TextEditingController(text: "944095635"),
                          obscureText: true,
                          style: const TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            prefixIconConstraints: const BoxConstraints(
                                maxWidth: 28, minWidth: 28),
                            prefixIcon: SvgPicture.asset(
                              "images/Lock closed.svg",
                              width: 18,
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                            suffixIconConstraints: const BoxConstraints(
                              maxWidth: 28,
                              minWidth: 28,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            show = true;
                          });
                        },
                        child: const Text("登录"),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Visibility(
            visible: show,
            child: Container(
              alignment: Alignment.center,
              color: Colors.white,
              child: Container(
                height: 65,
                width: 65,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white.withOpacity(.36),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.shade700,
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.asset(
                    "images/header.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              left: 0,
              top: 0,
              child: Row(
                children: [
                  //const SizedBox(
                  //  width: 10,
                  //),
                  //SvgPicture.asset(
                  //  "images/logo-octocat.svg",
                  //  width: 16,
                  //  colorFilter: const ColorFilter.mode(
                  //    Colors.white,
                  //    BlendMode.srcIn,
                  //  ),
                  //  height: 32,
                  //),
                  Lottie.network(
                    'https://assets-v2.lottiefiles.com/a/36038e50-1178-11ee-9eeb-932b0ace7009/e1G6oYAnpF.json',
                    width: 80,
                    fit: BoxFit.fitHeight,
                  ),
                  //https://assets-v2.lottiefiles.com/a/edf76dc2-1152-11ee-958d-c3b5bd921fa2/uImB2tnwPB.json
                ],
              )),
          Container(
            alignment: Alignment.topCenter,
            height: 90,
            child: DragToMoveArea(
              child: SizedBox(
                height: 30,
                child: Row(
                  children: [
                    const Spacer(),
                    WindowCaptionButton.close(
                      brightness: Brightness.dark,
                      onPressed: windowManager.close,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
