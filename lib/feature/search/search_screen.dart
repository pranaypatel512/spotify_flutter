import 'dart:developer';

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:progressive_image/progressive_image.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:spotify_flutter/core/extension/extension.dart';
import 'package:spotify_flutter/core/widget/list_tile_shimmer.dart';
import 'package:spotify_flutter/feature/search/search_response/search_response/item.dart';
import 'package:spotify_flutter/feature/search/provider/search_screen_provider.dart';
import 'package:spotify_flutter/feature/search/search_request.dart';
import 'package:spotify_flutter/feature/search/search_response/search_response/search_response.dart';
import 'package:spotify_flutter/feature/search/search_widget.dart';
import 'package:sticky_headers/sticky_headers.dart';

import '../../core/constants/network_constants.dart';

/// The details screen for either the A or B screen.
class SearchScreen extends ConsumerWidget {
  /// Constructs a [SearchScreen].
  const SearchScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchQuery = ref.watch(spotifySearchProvider);
    final state = ref.watch(searchSpotifyProvider(
        searchRequest: SearchRequest(
            query: searchQuery,
            type: "album%2Cartist%2Ctrack%2Cplaylist%2Cshow",
            market: NetworkConstants.market)));
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Column(
        children: [
          const SpotifySearchBar(),
          state.when(error: (error, stackTrace) {
            return Text('Error $error');
          }, data: (data) {
            if (data.isBlankResponse) {
              return const Center(
                child: Text('Try to search and get what you want to listen!'),
              );
            }
            if (data.isLoading) {
              return const Center(
                child: TrackListTileShimmer(),
              );
            }
            if (data.searchResponse?.isBlank??true==true) {
              return Center(
                child: Text('No search result found',style: TextStyle(
                  color: context.isDark ? FlexColorScheme.dark().error : FlexColorScheme.light().error
                ),),
              );
            }
            log('Response: ${data.searchResponse.toString()}');
            // return  data.searchResponse?.tracks?.items != null
            //     ? Column(children: [
            //         const Padding(
            //             padding: EdgeInsets.all(12), child: Text("Tracks")),
            //         ResponsiveGridList(
            //           horizontalGridSpacing:
            //               4, // Horizontal space between grid items
            //           verticalGridSpacing:
            //               4, // Vertical space between grid items
            //           horizontalGridMargin:
            //               4, // Horizontal space around the grid
            //           verticalGridMargin:
            //               4, // Vertical space around the grid
            //           minItemWidth:
            //               200, // The minimum item width (can be smaller, if the layout constraints are smaller)
            //           minItemsPerRow:
            //               2, // The minimum items to show in a single row. Takes precedence over minItemWidth
            //           maxItemsPerRow:
            //               6, // The maximum items to show in a single row. Can be useful on large screens
            //           listViewBuilderOptions:
            //               ListViewBuilderOptions(), // Options that are getting passed to the ListView.builder() function
            //           children: [
            //             for (var element
            //                 in data.searchResponse?.playlists?.items ??
            //                     List.empty()) ...[
            //               GestureDetector(
            //                 onTap: () => {
            //                   //context.goNamed("details", extra: element)
            //                 },
            //                 child: Card(
            //                   child: Column(
            //                     crossAxisAlignment:
            //                         CrossAxisAlignment.start,
            //                     children: <Widget>[
            //                       _displayMedia(element.images?.first.url),
            //                       const SizedBox(height: 4.0),
            //                       Padding(
            //                         padding: const EdgeInsets.all(6.0),
            //                         child: Column(
            //                           crossAxisAlignment:
            //                               CrossAxisAlignment.start,
            //                           children: [
            //                             Text(
            //                               element.name ?? '',
            //                               style: const TextStyle(
            //                                 fontSize: 16.0,
            //                                 fontWeight: FontWeight.bold,
            //                               ),
            //                               overflow: TextOverflow.fade,
            //                               maxLines: 2,
            //                               softWrap: false,
            //                             ),
            //                             const SizedBox(height: 4.0),
            //                             Row(
            //                               children: [
            //                                 Expanded(
            //                                   flex: 0,
            //                                   child: Text(
            //                                     element.releaseDate ?? '',
            //                                     style: const TextStyle(
            //                                       fontSize: 14.0,
            //                                     ),
            //                                   ),
            //                                 ),
            //                                 const SizedBox(width: 4.0),
            //                                 Expanded(
            //                                     child: Text(
            //                                   element.artists
            //                                           ?.map((e) => e.name)
            //                                           .join(", ") ??
            //                                       "",
            //                                   style: const TextStyle(
            //                                     fontSize: 14.0,
            //                                   ),
            //                                   overflow:
            //                                       TextOverflow.ellipsis,
            //                                   maxLines: 1,
            //                                 ))
            //                               ],
            //                             ),
            //                           ],
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                 ),
            //               )
            //             ]
            //           ], // The list of widgets in the list
            //         ),
            //       ])
            //     : const Divider();
        return Flexible(
          child: ListView.builder(itemBuilder: (context, index) {
              return StickyHeader(
          header: Container(
            height: 50.0,
            color: context.isDark ? const ColorScheme.dark().onBackground.withAlpha(9) : 
            const ColorScheme.light().onBackground.withAlpha(9),
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.centerLeft,
            child: Text(titleAsPerIndex(index),
              style: const TextStyle(color: Colors.white),
            ),
          ),
          content: ResponsiveGridList(
                      horizontalGridSpacing:
                          4, // Horizontal space between grid items
                      verticalGridSpacing:
                          4, // Vertical space between grid items
                      horizontalGridMargin:
                          4, // Horizontal space around the grid
                      verticalGridMargin:
                          4, // Vertical space around the grid
                      minItemWidth:
                          200, // The minimum item width (can be smaller, if the layout constraints are smaller)
                      minItemsPerRow:
                          2, // The minimum items to show in a single row. Takes precedence over minItemWidth
                      maxItemsPerRow:
                          6, // The maximum items to show in a single row. Can be useful on large screens
                      listViewBuilderOptions:
                          ListViewBuilderOptions(shrinkWrap: true,
                        physics: const ScrollPhysics(),scrollDirection: Axis.vertical), // Options that are getting passed to the ListView.builder() function
                      children: [
                        for (var element
                            in listSections(index,data.searchResponse)) ...[
                          GestureDetector(
                            onTap: () => {
                              //context.goNamed("details", extra: element)
                            },
                            child: Card(
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: <Widget>[
                                  _displayMedia(element.images?.first.url),
                                  const SizedBox(height: 4.0),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          element.name ?? '',
                                          style: const TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          overflow: TextOverflow.fade,
                                          maxLines: 2,
                                          softWrap: false,
                                        ),
                                        const SizedBox(height: 4.0),
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: 0,
                                              child: Text(
                                                element.releaseDate ?? '',
                                                style: const TextStyle(
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 4.0),
                                            Expanded(
                                                child: Text(
                                              element.artists
                                                      ?.map((e) => e.name)
                                                      .join(", ") ??
                                                  "",
                                              style: const TextStyle(
                                                fontSize: 14.0,
                                              ),
                                              overflow:
                                                  TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ))
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ]
                      ], // The list of widgets in the list
                    ),
              );
            },shrinkWrap: true,itemCount: 5,),
        );          
}, loading: () {
            return Expanded(
              child: ResponsiveGridList(
                        horizontalGridSpacing:
                            4, // Horizontal space between grid items
                        verticalGridSpacing:
                            4, // Vertical space between grid items
                        horizontalGridMargin:
                            4, // Horizontal space around the grid
                        verticalGridMargin:
                            4, // Vertical space around the grid
                        minItemWidth:
                            200, // The minimum item width (can be smaller, if the layout constraints are smaller)
                        minItemsPerRow:
                            2, // The minimum items to show in a single row. Takes precedence over minItemWidth
                        maxItemsPerRow:
                            6, // The maximum items to show in a single row. Can be useful on large screens
                        listViewBuilderOptions:
                            ListViewBuilderOptions(shrinkWrap: true,
                          physics: const ScrollPhysics(),scrollDirection: Axis.vertical), // Options that are getting passed to the ListView.builder() function
                        children:[ 
                          
                          for(var index in Iterable.generate(20))...[
                          const TrackListTileShimmer()
                        ]]),
            );
          })
        ],
      ),
    );
  }
}

Widget _displayMedia(String? finalUrl) {
  if (finalUrl != null) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: ProgressiveImage(
        placeholder: const AssetImage('assets/images/image_place_holder.png'),
        thumbnail: NetworkImage(finalUrl),
        image: NetworkImage(finalUrl),
        height: 160,
        width: double.infinity,
      ),
    );
  } else {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Image.asset(
        "assets/images/image_place_holder.png",
        height: 160,
        width: double.infinity,
      ),
    );
  }
}

List<Item> listSections(int index, SearchResponse? searchResponse){
  if(index==0){
    return searchResponse?.albums?.items ?? List.empty();
  } else if(index==1){
    return searchResponse?.artists?.items ?? List.empty();
  }else if(index==2){
    return searchResponse?.tracks?.items ?? List.empty();
  }else if(index==3){
    return searchResponse?.playlists?.items ?? List.empty();
  }else if(index==4){
    return searchResponse?.shows?.items ?? List.empty();
  } else {
    return List.empty();
  }
}
