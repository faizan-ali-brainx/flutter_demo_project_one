
import 'package:flutter/material.dart';

import '../models/Thread.dart';

class ThreadsProvider extends ChangeNotifier {

  final List<Thread> _threadsList = [
    Thread("1", "Jhon", "+92 3244273980", "Hi there", false,),
    Thread("1", "Jhon", "+92 3244273980", "Hi there, this is a very long message hahahahahahahahahahhahahahah", false,),
    Thread("1", "Jhon", "+92 3244273980", "Hi there", false,),
    Thread("1", "Jhon", "+92 3244273980", "Hi there", false,),
    Thread("1", "Jhon", "+92 3244273980", "Hi there", false,),
    Thread("1", "Jhon", "+92 3244273980", "Hi there", false,),
    Thread("1", "Jhon", "+92 3244273980", "Hi there", false,),
    Thread("1", "Jhon", "+92 3244273980", "Hi there", false,),
    Thread("1", "Jhon", "+92 3244273980", "Hi there", false,),
    Thread("1", "Jhon", "+92 3244273980", "Hi there", false,),
    Thread("1", "Jhon", "+92 3244273980", "Hi there", false,),
    Thread("1", "Jhon", "+92 3244273980", "Hi there", false,),
    Thread("1", "Jhon", "+92 3244273980", "Hi there", false,),
    Thread("1", "Jhon", "+92 3244273980", "Hi there", false,),
  ];

  List<Thread> get threadsList => _threadsList;

}