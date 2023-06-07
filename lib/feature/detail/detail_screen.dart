import 'dart:developer';

import 'package:beamer/beamer.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:progressive_image/progressive_image.dart';
import 'package:spotify_flutter/core/extension/extension.dart';
import 'package:spotify_flutter/feature/detail/album_details_response/artist.dart';
import 'package:spotify_flutter/feature/detail/album_details_response/item.dart';
import 'package:spotify_flutter/feature/detail/album_details_response/tracks.dart';
import 'package:spotify_flutter/feature/detail/provider/detail_screen_provider.dart';
import 'package:spotify_flutter/feature/detail/state/detail_screen_state.dart';

import '../../core/authtoken/provider/auth_token_provider.dart';
import '../../core/widget/list_tile_shimmer.dart';

class DetailScreen extends ConsumerWidget {
  const DetailScreen({super.key, required String? albumId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final beamState = Beamer.of(context).currentBeamLocation.state as BeamState;
    final albumIdValue = beamState.pathPatternSegments[2];
    final tokenState = ref.watch(authTokenProvider);
    final albumDetailState =
        ref.watch(getAlbumDetailsProvider(albumID: albumIdValue));

    final loading = tokenState.isLoading || albumDetailState.isLoading;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Album Detail'),
        ),
        body: loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      expandedHeight: 300.0,
                      floating: false,
                      pinned: true,
                      flexibleSpace: FlexibleSpaceBar(
                        centerTitle: true,
                        title: const Text("",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            )),
                        background:
                            _getDetailTop(albumDetailState.asData!.value),
                      ),
                    ),
                  ];
                },
                body: Center(
                    child: Column(
                  children: [
                    albumDetailState.when(error: (error, stackTrace) {
                      return Text('Error $error');
                    }, data: (data) {
                      if (data.isBlankResponse) {
                        return const Center(
                          child: Text(
                              'Try to search and get what you want to listen!'),
                        );
                      }
                      if (data.isLoading) {
                        return const Center(
                          child: TrackListTileShimmer(),
                        );
                      }
                      if (data.albumDetailResponse == null) {
                        return Center(
                          /*,,*/
                          child: Text(
                            'Something  went wrong',
                            style: TextStyle(
                                color: context.isDark
                                    ? FlexColorScheme.dark().error
                                    : FlexColorScheme.light().error),
                          ),
                        );
                      }
                      log('Response: ${data.albumDetailResponse.toString()}');

                      return Expanded(
                        child: Column(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween, // add this
                          children: [
                            Container(
                              alignment: Alignment.center,
                              color: const Color.fromRGBO(8, 180, 190, 1),
                              child: _getActions(),
                            ),
                            Expanded(
                                child: _getTracks(
                                    data.albumDetailResponse?.tracks))
                          ],
                        ),
                      );
                    }, loading: () {
                      return const Card();
                    }),
                  ],
                ))));
  }
}

Widget _displayMedia(String? finalUrl, double height, double width) {
  if (finalUrl != null) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: ProgressiveImage(
        placeholder: const AssetImage('assets/images/image_place_holder.png'),
        thumbnail: NetworkImage(finalUrl),
        image: NetworkImage(finalUrl),
        height: height,
        width: width,
      ),
    );
  } else {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Image.asset(
        "assets/images/image_place_holder.png",
        height: height,
        width: width,
      ),
    );
  }
}

Widget _getDetailTop(DetailScreenState data) {
  return Container(
    color: const Color.fromRGBO(8, 152, 184, 1),
    child: Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        color: const Color.fromRGBO(8, 152, 184, 1),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _displayMedia(
                  data.albumDetailResponse?.images?.first.url, 192, 192),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                        const SizedBox(height: 60),
                        Text(
                          data.albumDetailResponse?.name ?? '',
                          style: const TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.fade,
                          maxLines: 2,
                          softWrap: false,
                        ),
                        const SizedBox(height: 60),
                        _artistDetail(
                            data.albumDetailResponse?.artists?.first,
                            data.albumDetailResponse?.releaseDate,
                            data.albumDetailResponse?.totalTracks ?? 0,
                            getTotalPlayTime(data.albumDetailResponse?.tracks)
                                .toString()),
                      ],
                    ),
                  ),
                ],
              )
            ]),
      ),
    ),
  );
}

Widget _artistDetail(Artist? artist, String? releaseYear, int numberOfSongs,
    String? totalDuration) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        artist?.name ?? '',
        style: const TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(6.0),
        child: Icon(
          Icons.circle,
          color: Colors.white,
          size: 8.0,
        ),
      ),
      Text(
        releaseYear?.split('-').first ?? '',
        style: const TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(6.0),
        child: Icon(
          Icons.circle,
          color: Colors.white,
          size: 8.0,
        ),
      ),
      Text(
        '$numberOfSongs songs, ',
        style: const TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        '$totalDuration' ?? '',
        style: const TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
        ),
      )
    ],
  );
}

Widget _getActions() {
  return const Padding(
    padding: EdgeInsets.all(8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Icon(
          Icons.play_circle_fill,
          color: Colors.greenAccent,
          size: 40.0,
          semanticLabel: 'Text to announce in accessibility modes',
        ),
        Icon(
          Icons.favorite_border,
          color: Colors.grey,
          size: 40.0,
        ),
        Icon(
          Icons.more_horiz,
          color: Colors.grey,
          size: 40.0,
        ),
      ],
    ),
  );
}

Widget _getTracks(Tracks? tracks) {
  return ListView.builder(
      itemCount: tracks?.items?.length ?? 0,
      itemBuilder: (_, index) {
        if (index == 0) {
          return Column(
            children: [
              // The header
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.black45,
                child: const ListTile(
                  leading: Text('#'),
                  title: Text('Title'),
                  trailing: Icon(
                    Icons.timelapse_rounded,
                    color: Colors.blue,
                    size: 20.0,
                  ),
                ),
              ),

              // The fist list item
              _listItem(tracks!.items!.elementAt(index), index)
            ],
          );
        }
        return _listItem(tracks!.items!.elementAt(index), index);
      });
}

// Item of the ListView
Widget _listItem(Item item, int index) {
  final duration = Duration(milliseconds: item.durationMs ?? 0);
  final mm = (duration.inMinutes % 60).toString().padLeft(1, '0');
  final ss = (duration.inSeconds % 60).toString().padLeft(2, '0');

  final dur = '$mm:$ss';
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Colors.black26))),
    child: ListTile(
      leading:
          Text((index + 1).toString(), style: const TextStyle(fontSize: 18)),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.name ?? '',
            style: const TextStyle(fontSize: 18),
          ),
          Text(
            getArtists(item.artists) ?? '',
            style: const TextStyle(fontSize: 12),
          )
        ],
      ),
      trailing: Text(dur, style: const TextStyle(fontSize: 18)),
    ),
  );
}

String getTotalPlayTime(Tracks? tracks) {
  if (tracks == null || tracks.items == null) {
    return "00:00";
  }
  var totalDuration = 0;
  for (var item in tracks.items!) {
    totalDuration += item.durationMs ?? 0;
  }

  final duration = Duration(milliseconds: totalDuration);
  final mm = (duration.inMinutes % 60).toString().padLeft(2, '0');
  final ss = (duration.inSeconds % 60).toString().padLeft(1, '0');

  return '$mm min $ss sec';
}

String getArtists(List<Artist>? artistList) {
  if (artistList == null || artistList.isEmpty) {
    return "";
  }
  var artists = "";
  for (var item in artistList) {
    if (item.name != null && item.name!.isNotEmpty) {
      artists += item.name!;
    }
    artists += ',  ';
  }

  return artists;
}
