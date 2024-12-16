import 'package:interview_grader/models/assessment.dart';
import 'package:interview_grader/models/assessment_item.dart';
import 'package:interview_grader/models/section.dart';

final Assessment assessmentData = Assessment(sections: sections);

final sections = [
  Section(
    label: 'General',
    assesmentItems: [
      AssesmentItem(
        question: 'Explain Solid Principles ?',
        answer:
            """The SOLID principles are a set of five design principles that help make object-oriented software more understandable, flexible, and maintainable. Here's a brief overview of each:
S - Single Responsibility Principle (SRP):
A class should have only one reason to change, meaning it should only have one job or responsibility.
O - Open/Closed Principle (OCP):
Software entities (classes, modules, functions, etc.) should be open for extension but closed for modification. You should be able to add new functionality without changing existing code.
L - Liskov Substitution Principle (LSP):
Objects of a superclass should be replaceable with objects of its subclass without affecting the correctness of the program. Subclasses must adhere to the behavior expected by the base class.
I - Interface Segregation Principle (ISP):
Clients should not be forced to depend on interfaces they do not use. Instead of a large, general-purpose interface, it's better to have several smaller, specific interfaces.
D - Dependency Inversion Principle (DIP):
High-level modules should not depend on low-level modules. Both should depend on abstractions (e.g., interfaces). Also, abstractions should not depend on details; details should depend on abstractions.
Together, these principles help create code that is easier to manage and extend while minimizing the risks of bugs and side effects when changes are made.""",
        weight: 1,
      ),
    ],
  ),
  Section(
    label: 'Flutter',
    assesmentItems: [
      AssesmentItem(
        question: 'What are packages and plugins in Flutter?',
        answer:
            """A package is a set of classes, interfaces, and sub-packages that allow users to create modular code that can be shared easily. Instead of starting from scratch, using packages can help construct applications fast. In Flutter, you may use a package to add new widgets or functionality to an app.
On the other hand, a plugin is a piece of software that enhances your app's functionality. Plugins play a crucial role in the Flutter ecosystem.""",
        weight: 1,
      ),
      AssesmentItem(
        question: 'What are keys and how do you use them?',
        answer:
            """A set of IDs for Widgets, Elements and SemanticsNodes make up the key class. Keys are responsible for preserving the state of widgets when they are updated inside the widget tree. Keys may also be used to modify and rearrange collections of widgets of the same type and defined states.
Otherwise, keys may be superfluous to the code, even if they aren't harmful in any manner. Keys are useful when you need to edit a widget tree with stateful widgets, but not when the tree is entirely made up of stateless widgets.""",
        weight: 1,
      ),
      AssesmentItem(
        question: 'What are the different types of streams in Dart?',
        answer:
            """Streams provide an asynchronous sequence of data. Asynchronous programming uses the idea of streams. They refer to a program's asynchronous succession of data occurrences. We put a value on one end and a listener on the other, similar to a pipe. Several listeners can be combined into a single stream, and when they are placed in the pipeline, they will all get the same data. It is possible to utilize the SteamController to establish new streams or manage existing ones. There are two types of streams:

Single Subscription Streams
These streams convey events in chronological order. They're thought of as individual sequences inside a greater totality. When the sequence in which events are received matters, such as when reading a file, these streams are employed. Throughout the sequence, there can only be one listener, and the event will not be triggered if there isn't one.

Broadcast Streams
These broadcasts provide subscribers with information about upcoming events. Subscribers can instantly begin listening to events after subscribing to them. These are flexible streams that allow several listeners to listen at the same time. Furthermore, even after canceling a previous membership, one may listen again.""",
        weight: 1,
      ),
      AssesmentItem(
        question: 'Name the different types of build modes in Flutter.',
        answer:
            """There are three types of build modes in Flutter. These include:

1. Debug: It is used to test the apps. On Android Studio, you can find a green play button on the top panel.
   - 'Flutter run'

2. Profile: In this mode, some debugging ability is maintained - enough to profile your app's performance, and also, it has the performance as the release mode.
   - 'Flutter run -- profile'

3. Release: It is used for deploying the app on marketplaces.
   - 'Flutter run -- release'""",
        weight: 1,
      ),
    ],
  ),
];

const json = {
  "asseseeName": "",
  "yoe": 0,
  "sections": [
    {
      "label": "General",
      "assesmentItems": [
        {
          "question": "Explain Solid Principles ?",
          "answer":
              "The SOLID principles are a set of five design principles that help make object-oriented software more understandable, flexible, and maintainable. Here's a brief overview of each:\nS - Single Responsibility Principle (SRP):\nA class should have only one reason to change, meaning it should only have one job or responsibility.\nO - Open/Closed Principle (OCP):\nSoftware entities (classes, modules, functions, etc.) should be open for extension but closed for modification. You should be able to add new functionality without changing existing code.\nL - Liskov Substitution Principle (LSP):\nObjects of a superclass should be replaceable with objects of its subclass without affecting the correctness of the program. Subclasses must adhere to the behavior expected by the base class.\nI - Interface Segregation Principle (ISP):\nClients should not be forced to depend on interfaces they do not use. Instead of a large, general-purpose interface, it's better to have several smaller, specific interfaces.\nD - Dependency Inversion Principle (DIP):\nHigh-level modules should not depend on low-level modules. Both should depend on abstractions (e.g., interfaces). Also, abstractions should not depend on details; details should depend on abstractions.\nTogether, these principles help create code that is easier to manage and extend while minimizing the risks of bugs and side effects when changes are made.",
          "grade": 0,
          "weight": 1
        }
      ]
    },
    {
      "label": "Flutter",
      "assesmentItems": [
        {
          "question": "What are packages and plugins in Flutter?",
          "answer":
              "A package is a set of classes, interfaces, and sub-packages that allow users to create modular code that can be shared easily. Instead of starting from scratch, using packages can help construct applications fast. In Flutter, you may use a package to add new widgets or functionality to an app.\nOn the other hand, a plugin is a piece of software that enhances your app's functionality. Plugins play a crucial role in the Flutter ecosystem.",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "What are keys and how do you use them?",
          "answer":
              "A set of IDs for Widgets, Elements and SemanticsNodes make up the key class. Keys are responsible for preserving the state of widgets when they are updated inside the widget tree. Keys may also be used to modify and rearrange collections of widgets of the same type and defined states.\nOtherwise, keys may be superfluous to the code, even if they aren't harmful in any manner. Keys are useful when you need to edit a widget tree with stateful widgets, but not when the tree is entirely made up of stateless widgets.",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "What are the different types of streams in Dart?",
          "answer":
              "Streams provide an asynchronous sequence of data. Asynchronous programming uses the idea of streams. They refer to a program's asynchronous succession of data occurrences. We put a value on one end and a listener on the other, similar to a pipe. Several listeners can be combined into a single stream, and when they are placed in the pipeline, they will all get the same data. It is possible to utilize the SteamController to establish new streams or manage existing ones. There are two types of streams:\n\nSingle Subscription Streams\nThese streams convey events in chronological order. They're thought of as individual sequences inside a greater totality. When the sequence in which events are received matters, such as when reading a file, these streams are employed. Throughout the sequence, there can only be one listener, and the event will not be triggered if there isn't one.\n\nBroadcast Streams\nThese broadcasts provide subscribers with information about upcoming events. Subscribers can instantly begin listening to events after subscribing to them. These are flexible streams that allow several listeners to listen at the same time. Furthermore, even after canceling a previous membership, one may listen again.",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "Name the different types of build modes in Flutter.",
          "answer":
              "There are three types of build modes in Flutter. These include:\n\n1. Debug: It is used to test the apps. On Android Studio, you can find a green play button on the top panel.\n   - 'Flutter run'\n\n2. Profile: In this mode, some debugging ability is maintained - enough to profile your app's performance, and also, it has the performance as the release mode.\n   - 'Flutter run -- profile'\n\n3. Release: It is used for deploying the app on marketplaces.\n   - 'Flutter run -- release'",
          "grade": 0,
          "weight": 1
        }
      ]
    }
  ]
};
