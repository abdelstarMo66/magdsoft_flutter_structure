import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/data/models/help_model.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/background.dart';

class HelpView extends StatefulWidget {
  const HelpView({Key? key}) : super(key: key);

  @override
  State<HelpView> createState() => _HelpViewState();
}

class _HelpViewState extends State<HelpView> {
  @override
  Widget build(BuildContext context) {
    List<HelpModel> help = getHelp();

    return Scaffold(
      body: Stack(
        children: [
          const BackGround(),
          Padding(
            padding: const EdgeInsets.only(
                top: 50.0, right: 16.0, left: 16.0, bottom: 22.0),
            child: Column(
              children: [
                const Text(
                  "Help",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 55.0,
                ),
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.all(8),
                    itemCount: help.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 8,
                                  offset: Offset(2, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            child: ExpansionTile(
                              title: Text(
                                help[index].question,
                                style: const TextStyle(
                                  color: Color(0xFF0062BD),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: ListTile(
                                    title: Text(
                                      help[index].answer,
                                      style: const TextStyle(
                                        color: Color(0xFF464646),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      height: 27.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
