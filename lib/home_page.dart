import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_exp/reaction_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: Center(
        child: SizedBox(
          // color: Colors.red,
          // height: 40,
          // width: 300,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(

              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  height: 40,
                  width: 200,
                  child: 
                      const Center(child: Text('Demo')),
                   ),
                  Positioned(
                bottom: 0,
                right: 0,
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        decoration:  BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: ReactionButton(
                          initialReaction: getFakeInitialReaction(0),
                          onReactionChanged: (reaction) {
                           log(reaction.name);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                    
               
              ],
            ),
          ),
        ),
      ),
    );
  }

  Reaction? getFakeInitialReaction(int index) {
    return Reaction.none;
  }
}
