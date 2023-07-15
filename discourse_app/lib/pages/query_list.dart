import 'package:auto_route/auto_route.dart';
import 'package:discourse_app/route/router.gr.dart';
import 'package:discourse_app/services/api_handler.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'QueryListRouter')
class QueryListRouter extends StatelessWidget {
  const QueryListRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}

@RoutePage()
class QueryListScreen extends StatefulWidget {
  const QueryListScreen({super.key});

  @override
  State<StatefulWidget> createState() => _QueryListState();
}

class _QueryListState extends State<QueryListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Routes')),
      body: FutureBuilder(
        future: ApiHandler().queryList(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }

          var data = snapshot.data!;

          return ListView.separated(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                    '${data[index]['source_address']} to ${data[index]['dest_address']}'),
                onTap: () {
                  context.router.push(const AnswerListRoute());
                },
              );
            },
            separatorBuilder: (context, index) => const Divider(),
          );
        },
      ),
    );
  }
}

@RoutePage()
class AnswerListScreen extends StatelessWidget {
  const AnswerListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Commute Directions')),
      body: FutureBuilder(
        future: ApiHandler().answerList(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const CircularProgressIndicator();
          }

          var data = snapshot.data!;

          return ListView.separated(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(data[index]['direction']),
                subtitle: Text('Upvotes: ${data[index]['upvotes']}'),
              );
            },
            separatorBuilder: (context, index) => const Divider(),
          );
        },
      ),
      floatingActionButton: ElevatedButton(
        child: const Text('Suggest Another Direction'),
        onPressed: () {
          context.router.push(const SuggestDirectionRoute());
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

@RoutePage()
class SuggestDirectionScreen extends StatelessWidget {
  const SuggestDirectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _textEditingController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Suggest Direction'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: TextField(
          controller: _textEditingController,
          minLines: 4,
          maxLines: null, // Set to null for multiline support
          decoration: InputDecoration(
            labelText: 'Enter text',
            border: OutlineInputBorder(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.pop();
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
