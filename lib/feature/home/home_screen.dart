import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:progressive_image/progressive_image.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:spotify_flutter/core/authtoken/provider/auth_token_provider.dart';
import 'package:spotify_flutter/feature/home/model/new_release_list_response/item.dart';
import 'package:spotify_flutter/feature/home/provider/home_screen_provider.dart';

/// Widget for the root/initial pages in the bottom navigation bar.
class HomeScreen extends ConsumerWidget {
  /// Creates a RootScreen
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tokenState = ref.watch(authTokenProvider);
    final homeListState = ref.watch(homeListProvider);

    final isLoading = tokenState.isLoading || homeListState.isLoading;
    // ignore: unused_local_variable
    final hasError = tokenState.authTokenErrorResponse?.error ??
        homeListState.newReleaseErrorResponse?.error?.message;
    final items =
        homeListState.newReleaseListResponse?.albums?.items ?? List.empty();

    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : items.isNotEmpty
                ? ResponsiveGridList(
                    horizontalGridSpacing:
                        4, // Horizontal space between grid items
                    verticalGridSpacing: 4, // Vertical space between grid items
                    horizontalGridMargin: 4, // Horizontal space around the grid
                    verticalGridMargin: 4, // Vertical space around the grid
                    minItemWidth:
                        200, // The minimum item width (can be smaller, if the layout constraints are smaller)
                    minItemsPerRow:
                        2, // The minimum items to show in a single row. Takes precedence over minItemWidth
                    maxItemsPerRow:
                        6, // The maximum items to show in a single row. Can be useful on large screens
                    listViewBuilderOptions:
                        ListViewBuilderOptions(), // Options that are getting passed to the ListView.builder() function
                    children: [
                      for (var element in items) ...[
                        GestureDetector(
                          onTap: () => {
                            //context.goNamed("details", extra: element)
                          },
                          child: Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                            overflow: TextOverflow.ellipsis,
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
                  )
                : const Center(
                    child: Text("No items"),
                  ));
  }
}

Future<List<Widget>> itemChilds(List<Item> items, BuildContext context) async {
  List<Widget> listofChild = List.empty();

  for (var element in items) {
    listofChild.add(GestureDetector(
      onTap: () => {
        //context.goNamed("details", extra: element)
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _displayMedia(element.images?.first.url),
              const SizedBox(height: 8.0),
              Text(
                element.name ?? '',
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
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
                    element.artists?.map((e) => e.name).join(", ") ?? "",
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ))
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }

  return listofChild;
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
