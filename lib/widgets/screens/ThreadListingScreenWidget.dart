
import 'package:flutter/material.dart';

import 'package:flutter_demo_project_one/providers/ThreadsProvider.dart';
import 'package:flutter_demo_project_one/widgets/listItems/ThreadItemWidget.dart';

class ThreadListingScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var threads = ThreadsProvider().threadsList;

    return ListView.separated(
        itemBuilder: (context, index) {
          return ThreadItemWidget(
            threads[index].getSenderName,
            threads[index].getPhoneNumber,
            threads[index].getLastMessage,
            threads[index].isAttachment,
          );
        },
        separatorBuilder: (context, index) => const Divider(
              height: 0,
              thickness: 1,
              color: Colors.black38,
            ),
        itemCount: threads.length);
  }
}
