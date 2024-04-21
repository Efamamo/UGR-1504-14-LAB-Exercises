import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'post_provider.dart';
import 'post.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod State Management',
      home: PostListScreen(),
    );
  }
}

class PostListScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var postAsyncValue = ref.watch(postProvider);
    return Scaffold(
        appBar: AppBar(
          title: Text('Posts'),
        ),
        body: Consumer(
          builder: (context, watch, child) {
            return postAsyncValue.when(
              data: (posts) => ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  final post = posts[index];
                  return ListTile(
                    title: Text(post.title),
                    subtitle: Text(post.body),
                  );
                },
              ),
              loading: () => Center(child: CircularProgressIndicator()),
              error: (error, stackTrace) =>
                  Center(child: Text('Error: $error')),
            );
          },
        ));
  }
}
