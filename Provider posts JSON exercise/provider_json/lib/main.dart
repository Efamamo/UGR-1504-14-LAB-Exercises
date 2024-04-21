import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'post_provider.dart';
import 'post.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => PostProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider State Management',
      home: PostListScreen(),
    );
  }
}

class PostListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final postProvider = Provider.of<PostProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: FutureBuilder(
        future: postProvider.fetchPosts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return ListView.builder(
              itemCount: postProvider.posts.length,
              itemBuilder: (context, index) {
                final post = postProvider.posts[index];
                return ListTile(
                  title: Text(post.title),
                  subtitle: Text(post.body),
                );
              },
            );
          }
        },
      ),
    );
  }
}
