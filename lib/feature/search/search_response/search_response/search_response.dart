import 'package:freezed_annotation/freezed_annotation.dart';

import 'albums.dart';
import 'artists.dart';
import 'playlists.dart';
import 'shows.dart';
import 'tracks.dart';

part 'search_response.freezed.dart';
part 'search_response.g.dart';

@freezed
class SearchResponse with _$SearchResponse {
  factory SearchResponse({
    Albums? albums,
    Artists? artists,
    Tracks? tracks,
    Playlists? playlists,
    Shows? shows,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);

}

String titleAsPerIndex(int index){
   if(index==1) {
     return "Artists"; 
   } else if(index==2) {
     return "Tracks";
   } else if(index==3) {
     return "Playlists" ;
   } else if(index==4) {
     return "Shows";
   } else {
     return "Albums";
   }
  
}