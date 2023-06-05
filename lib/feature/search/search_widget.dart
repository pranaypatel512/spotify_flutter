// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SpotifySearchBar extends ConsumerStatefulWidget {
  const SpotifySearchBar({Key? key}) : super(key: key);

  @override
  ConsumerState<SpotifySearchBar> createState() => SpotifySearchState();
}


class SpotifySearchState extends ConsumerState<SpotifySearchBar>{
  final _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
   return SizedBox(height: 80,
   child: Center(child: Container(margin: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
   decoration: BoxDecoration(color: Colors.grey.shade900,
    borderRadius: const BorderRadius.all(Radius.circular(50))),
   child:Padding(padding: const EdgeInsets.only(left: 10),child: 
   Row(children: [
    const Icon(Icons.search),
    const SizedBox(width: 10,),
    Expanded(child: Center(
      child: TextField(controller: _textEditingController,
      decoration: 
      const InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        hoverColor: Colors.transparent,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                        isDense: true,
                        hintText: 'What do you want to listen to?',
                      ),
                      onEditingComplete: (){
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      onChanged: (search)=> ref.read(spotifySearchProvider.notifier).state=search,
      ),
    ))
   ],)
   ,) ,),),);
  }
  
  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}

final spotifySearchProvider = StateProvider<String>((ref){
  return '';
});