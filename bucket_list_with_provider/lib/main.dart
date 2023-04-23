import 'package:bucket_list_with_provider/bucket_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BucketService(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class Bucket {
  String job;
  bool isDone;

  Bucket(this.job, this.isDone);
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BucketService>(
      builder: (context, bucketService, child) {
        List<Bucket> bucketList = bucketService.bucketList;

        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("버킷리스트"),
          ),
          body: bucketList.isEmpty
              ? Center(child: Text("버킷 리스트를 작성해주세요."))
              : ListView.builder(
                  itemCount: bucketList.length,
                  itemBuilder: (context, index) {
                    var bucket = bucketList[index];
                    return ListTile(
                      title: Text(
                        bucket.job,
                        style: TextStyle(
                          fontSize: 24,
                          color: bucket.isDone ? Colors.grey : Colors.black,
                          decoration: bucket.isDone
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          CupertinoIcons.delete,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          bucketService.deleteBucket(index);
                        },
                      ),
                      onTap: () {
                        bucket.isDone = !bucket.isDone;
                        bucketService.updateBucket(bucket, index);
                      },
                    );
                  },
                ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CreatePage(),
                ),
              );
            },
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  TextEditingController textController = TextEditingController();

  String? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("버킷리스트 작성"),
        leading: IconButton(
          icon: Icon(CupertinoIcons.chevron_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: textController,
              autofocus: true,
              decoration: InputDecoration(
                hintText: "하고 싶은 일을 입력히세요.",
                errorText: error,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: Text(
                  "추가하기",
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  String job = textController.text;
                  if (job.isEmpty) {
                    setState(() {
                      error = "내용을 입력해주세요.";
                    });
                  } else {
                    setState(() {
                      error = null;
                    });
                    BucketService bucketService = context.read<BucketService>();
                    bucketService.createBucket(job);
                    Navigator.pop(context);
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
