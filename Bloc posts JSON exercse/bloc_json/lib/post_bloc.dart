import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'post.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitial());

  @override
  Stream<PostState> mapEventToState(PostEvent event) async* {
    if (event is FetchPosts) {
      yield PostLoading();
      try {
        final response = await http
            .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
        if (response.statusCode == 200) {
          final List<dynamic> data = json.decode(response.body);
          final List<Post> posts =
              data.map((json) => Post.fromJson(json)).toList();
          yield PostLoaded(posts: posts);
        } else {
          yield PostError('Failed to load posts');
        }
      } catch (e) {
        yield PostError('Failed to load posts');
      }
    }
  }
}
