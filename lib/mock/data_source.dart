import 'package:interview_grader/models/assessment.dart';
import 'package:interview_grader/models/assessment_item.dart';
import 'package:interview_grader/models/section.dart';

// //final Assessment assessmentData = Assessment(sections: sections);

// final sections = [
//   Section(
//     label: 'General',
//     assesmentItems: [
//       AssesmentItem(
//         question: 'Explain Solid Principles ?',
//         answer:
//             """The SOLID principles are a set of five design principles that help make object-oriented software more understandable, flexible, and maintainable. Here's a brief overview of each:
// S - Single Responsibility Principle (SRP):
// A class should have only one reason to change, meaning it should only have one job or responsibility.
// O - Open/Closed Principle (OCP):
// Software entities (classes, modules, functions, etc.) should be open for extension but closed for modification. You should be able to add new functionality without changing existing code.
// L - Liskov Substitution Principle (LSP):
// Objects of a superclass should be replaceable with objects of its subclass without affecting the correctness of the program. Subclasses must adhere to the behavior expected by the base class.
// I - Interface Segregation Principle (ISP):
// Clients should not be forced to depend on interfaces they do not use. Instead of a large, general-purpose interface, it's better to have several smaller, specific interfaces.
// D - Dependency Inversion Principle (DIP):
// High-level modules should not depend on low-level modules. Both should depend on abstractions (e.g., interfaces). Also, abstractions should not depend on details; details should depend on abstractions.
// Together, these principles help create code that is easier to manage and extend while minimizing the risks of bugs and side effects when changes are made.""",
//         weight: 1,
//       ),
//     ],
//   ),
//   Section(
//     label: 'Flutter',
//     assesmentItems: [
//       AssesmentItem(
//         question: 'What are packages and plugins in Flutter?',
//         answer:
//             """A package is a set of classes, interfaces, and sub-packages that allow users to create modular code that can be shared easily. Instead of starting from scratch, using packages can help construct applications fast. In Flutter, you may use a package to add new widgets or functionality to an app.
// On the other hand, a plugin is a piece of software that enhances your app's functionality. Plugins play a crucial role in the Flutter ecosystem.""",
//         weight: 1,
//       ),
//       AssesmentItem(
//         question: 'What are keys and how do you use them?',
//         answer:
//             """A set of IDs for Widgets, Elements and SemanticsNodes make up the key class. Keys are responsible for preserving the state of widgets when they are updated inside the widget tree. Keys may also be used to modify and rearrange collections of widgets of the same type and defined states.
// Otherwise, keys may be superfluous to the code, even if they aren't harmful in any manner. Keys are useful when you need to edit a widget tree with stateful widgets, but not when the tree is entirely made up of stateless widgets.""",
//         weight: 1,
//       ),
//       AssesmentItem(
//         question: 'What are the different types of streams in Dart?',
//         answer:
//             """Streams provide an asynchronous sequence of data. Asynchronous programming uses the idea of streams. They refer to a program's asynchronous succession of data occurrences. We put a value on one end and a listener on the other, similar to a pipe. Several listeners can be combined into a single stream, and when they are placed in the pipeline, they will all get the same data. It is possible to utilize the SteamController to establish new streams or manage existing ones. There are two types of streams:

// Single Subscription Streams
// These streams convey events in chronological order. They're thought of as individual sequences inside a greater totality. When the sequence in which events are received matters, such as when reading a file, these streams are employed. Throughout the sequence, there can only be one listener, and the event will not be triggered if there isn't one.

// Broadcast Streams
// These broadcasts provide subscribers with information about upcoming events. Subscribers can instantly begin listening to events after subscribing to them. These are flexible streams that allow several listeners to listen at the same time. Furthermore, even after canceling a previous membership, one may listen again.""",
//         weight: 1,
//       ),
//       AssesmentItem(
//         question: 'Name the different types of build modes in Flutter.',
//         answer:
//             """There are three types of build modes in Flutter. These include:

// 1. Debug: It is used to test the apps. On Android Studio, you can find a green play button on the top panel.
//    - 'Flutter run'

// 2. Profile: In this mode, some debugging ability is maintained - enough to profile your app's performance, and also, it has the performance as the release mode.
//    - 'Flutter run -- profile'

// 3. Release: It is used for deploying the app on marketplaces.
//    - 'Flutter run -- release'""",
//         weight: 1,
//       ),
//     ],
//   ),
// ];

const json = {
  "asseseeName": "",
  "yoe": 0,
  "sections": [
    {
      "label": "General",
      "assesmentItems": [
        {
          "question": "OOPS?",
          "answer": "grade based on understanding of oops!",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "Explain Solid Principles?",
          "answer":
              "The SOLID principles are a set of five design principles that help make object-oriented software more understandable, flexible, and maintainable. Here's a brief overview of each:\nS - Single Responsibility Principle (SRP):\nA class should have only one reason to change, meaning it should only have one job or responsibility.\nO - Open/Closed Principle (OCP):\nSoftware entities (classes, modules, functions, etc.) should be open for extension but closed for modification. You should be able to add new functionality without changing existing code.\nL - Liskov Substitution Principle (LSP):\nObjects of a superclass should be replaceable with objects of its subclass without affecting the correctness of the program. Subclasses must adhere to the behavior expected by the base class.\nI - Interface Segregation Principle (ISP):\nClients should not be forced to depend on interfaces they do not use. Instead of a large, general-purpose interface, it's better to have several smaller, specific interfaces.\nD - Dependency Inversion Principle (DIP):\nHigh-level modules should not depend on low-level modules. Both should depend on abstractions (e.g., interfaces). Also, abstractions should not depend on details; details should depend on abstractions.\nTogether, these principles help create code that is easier to manage and extend while minimizing the risks of bugs and side effects when changes are made.",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "What is layered architecture?",
          "answer":
              "Flutter applications should be written in layers. Layered architecture is a software design pattern that organizes an application into distinct layers, each with specific roles and responsibilities. Typically, applications are separated into 2 to 3 layers, depending on complexity.\n\nUI layer - Displays data to the user that is exposed by the business logic layer, and handles user interaction. This is also commonly referred to as the ‘presentation layer’.\n\nLogic layer - Implements core business logic, and facilitates interaction between the data layer and UI layer. Commonly known as the ‘domain layer’. The logic layer is optional, and only needs to be implemented if your application has complex business logic that happens on the client. Many apps are only concerned with presenting data to a user and allowing the user to change that data (colloquially known as CRUD apps). These apps might not need this optional layer.\n\nData layer - Manages interactions with data sources, such as databases or platform plugins. Exposes data and methods to the business logic layer.\n\nThese are called ‘layers' because each layer can only communicate with the layers directly below or above it. The UI layer shouldn't know that the data layer exists, and vice versa.",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "Explain separation of concerns",
          "answer":
              "Separation-of-concerns is a core principle in app development that promotes modularity and maintainability by dividing an application's functionality into distinct, self-contained units. From a high-level, this means separating your UI logic from your business logic. This is often described as layered architecture. Within each layer, you should further separate your application by feature or functionality. For example, your application's authentication logic should be in a different class than the search logic.\nIn Flutter, this applies to widgets in the UI layer as well. You should write reusable, lean widgets that hold as little logic as possible.",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "What is single source of truth (SSOT)?",
          "answer":
              "Every data type in your app should have a single source of truth (SSOT). The source of truth is responsible for representing local or remote state. If the data can be modified in the app, the SSOT class should be the only class that can do so.\nThis can dramatically reduce the number of bugs in your application, and it can simplify code because you'll only ever have one copy of the same data.\nGenerally, the source of truth for any given type of data in your application is held in a class called a Repository, which is part of the data layer. There is typically one repository class for each type of data in your app.\nThis principle can be applied across layers and components in your application as well as within individual classes. For example, a Dart class might use getters to derive values from an SSOT field (instead of having multiple fields that need to be updated independently) or a list of records to group related values (instead of parallel lists whose indices might get out of sync).",
          "grade": 0,
          "weight": 1
        }
      ]
    },
    {
      "label": "Coding Skills",
      "assesmentItems": [
        {
          "question":
              "Given an array of integers numbers and an integer target, return indices of the two numbers such that they add up to target.\n\nYou may assume that each input would have exactly one solution, and you may not use the same element twice.\n\nYou can return the answer in any order.",
          "answer":
              "// Refer to the code below\n\nclass Solution {\n  List<int> twoSum(List<int> nums, int target) {\n    for (var i = 0; i < nums.length; i++) {\n      if (nums[i] + nums[i + 1] == target) {\n        return [i, i + 1];\n      }\n    }\n    return [0, 0];\n  }\n}",
          "grade": 0,
          "weight": 1
        },
        {
          "question":
              "Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same. Then return the number of unique elements in nums.\n\nConsider the number of unique elements of nums to be k, to get accepted, you need to do the following things:\n\nChange the array nums such that the first k elements of nums contain the unique elements in the order they were present in nums initially. The remaining elements of nums are not important as well as the size of nums.\nReturn k.\n\nCustom Judge:\n\nThe judge will test your solution with the following code:\n\nint[] nums = [...]; // Input array\nint[] expectedNums = [...]; // The expected answer with correct length\n\nint k = removeDuplicates(nums); // Calls your implementation\n\nassert k == expectedNums.length;\nfor (int i = 0; i < k; i++) {\n    assert nums[i] == expectedNums[i];\n}\nIf all assertions pass, then your solution will be accepted.",
          "answer":
              "// Refer to the code below\n\nclass Solution {\n  int removeDuplicates(List<int> nums) {\n   int k = 0;\n  for (int i = 1; i < nums.length; i++) {\n    if (nums[i - 1] != nums[i]) {\n      k++;\n      nums[k] = nums[i];\n    }\n  }\n  return k + 1;\n  }\n}",
          "grade": 0,
          "weight": 1
        },
        {
          "question":
              "You are given an array prices where prices[i] is the price of a given stock on the ith day.\n\nYou want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.\n\nReturn the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.",
          "answer":
              "// Refer to the code below\n\nclass Solution {\n  int maxProfit(List<int> prices) {\n    if (prices.isEmpty) return 0; \n\n    int minPrice = prices[0]; \n    int maxProfit = 0; \n\n    for (int i = 1; i < prices.length; i++) {\n      int profit = prices[i] - minPrice;\n\n      if (profit > maxProfit) {\n        maxProfit = profit;\n      }\n\n      if (prices[i] < minPrice) {\n        minPrice = prices[i];\n      }\n    }\n\n    return maxProfit;\n  }\n}",
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
              "A package is a set of classes, interfaces, and sub-packages that allow users to create modular code that can be shared easily. Instead of starting from scratch, using packages can help construct applications fast. In Flutter, you may use a package to add new widgets or functionality to an app. On the other hand, a plugin is a piece of software that enhances your app's functionality. Plugins play a crucial role in the Flutter ecosystem.",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "What are keys and how do you use them?",
          "answer":
              "A set of IDs for Widgets, Elements, and SemanticsNodes make up the key class. Keys are responsible for preserving the state of widgets when they are updated inside the widget tree. Keys may also be used to modify and rearrange collections of widgets of the same type and defined states. Otherwise, keys may be superfluous to the code, even if they aren't harmful in any manner. Keys are useful when you need to edit a widget tree with stateful widgets, but not when the tree is entirely made up of stateless widgets.",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "What are the different types of streams in Dart?",
          "answer":
              "Streams provide an asynchronous sequence of data. Asynchronous programming uses the idea of streams. They refer to a program's asynchronous succession of data occurrences. We put a value on one end and a listener on the other, similar to a pipe. Several listeners can be combined into a single stream, and when they are placed in the pipeline, they will all get the same data. It is possible to utilize the StreamController to establish new streams or manage existing ones. There are two types of streams:\n- Single Subscription Streams: These streams convey events in chronological order. They're thought of as individual sequences inside a greater totality. When the sequence in which events are received matters, such as when reading a file, these streams are employed. Throughout the sequence, there can only be one listener, and the event will not be triggered if there isn't one.\n- Broadcast Streams: These broadcasts provide subscribers with information about upcoming events. Subscribers can instantly begin listening to events after subscribing to them. These are flexible streams that allow several listeners to listen at the same time.",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "Name the different types of build modes in Flutter.",
          "answer":
              "There are three types of build modes in Flutter. These include:\n- **Debug**: It is used to test the apps. On Android Studio, you can find a green play button on the top panel. `Flutter run`\n- **Profile**: In this mode, some debugging ability is maintained - enough to profile your app's performance, and also, it has the performance as the release mode. `Flutter run -- profile`\n- **Release**: It is used for deploying the app on marketplaces. `Flutter run --release`",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "What is a widget tree? Any other trees in flutter?",
          "answer":
              "A widget tree is a hierarchical structure of widgets in Flutter that represents the user interface (UI) of your app. Think of it as a family tree, where each widget is a member of the family. The root widget is the parent, and its children are the next level of the tree. This structure helps organize and build complex UIs efficiently. Besides the widget tree, Flutter also uses an element tree and a render object tree internally to manage the UI and its rendering.",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "Custom Scrollview vs Single Child Scrollview",
          "answer":
              "SingleChildScrollView:\n- Simple scrolling scenarios\n- When you have a single large child widget that needs to be scrollable\nCustomScrollView:\n- Complex scrolling scenarios\n- When you need to combine multiple scrollable sections\n- When you want to create custom scroll effects\nIn summary, while SingleChildScrollView is a straightforward solution for basic scrolling needs, CustomScrollView offers greater flexibility and customization options for more complex scrolling scenarios.",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "What is stream transformers in dart",
          "answer":
              "A StreamTransformer is a powerful tool in Dart that allows you to modify the data flowing through a stream. It's like a filter or a processor that takes an input stream and transforms it into an output stream.",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "How would you architect a new flutter project?",
          "answer":
              "Please consider how the candidate adheres to solid principles or at least separation of concerns.",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "Explain the term “Tree shaking” in Flutter.",
          "answer":
              "Tree shaking is a method of removing the unused module in the bundle during the development process. Tree shaking serves as a sort of optimization technique that optimizes the code by removing the dead code. While importing or exporting codes, there might be dead codes hanging around. Removing these dead codes reduces the code size which in turn improves the performance of the application.",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "What's the role of BuildContext in Flutter?",
          "answer":
              "In Flutter, the BuildContext is an object that provides access to the location of a widget in the widget tree hierarchy and to various services such as Theme, MediaQuery, and Navigator. The BuildContext is used by widgets to access the properties of their parent widget, such as its size, position, and theme. It is also used to navigate between screens using the Navigator widget.",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "Const vs Final vs Static",
          "answer":
              "Const: Compile-time constant, immutable. Static: Class-level variable or method, accessible without instance creation. Final: Value cannot be changed after initialization, can be compile-time constant or not.",
          "grade": 0,
          "weight": 1
        },
        {
          "question":
              "What is a singleton, how to create a class as a singleton, Where would you use this?",
          "answer":
              "Singleton Design Pattern\nA Singleton is a design pattern that ensures a class only has one instance, and provides a global point of access to it. This is useful when you need to control the creation of objects and ensure that only one instance exists throughout your application.",
          "grade": 0,
          "weight": 1
        }
      ]
    },
    {
      "label": "State Management",
      "assesmentItems": [
        {
          "question": "Why State Management Libraries in Flutter?",
          "answer":
              "As Flutter apps grow in complexity, managing state becomes increasingly challenging. State management libraries provide structured ways to handle state, making your app more maintainable, testable, and scalable.",
          "grade": 0,
          "weight": 1
        },
        {
          "question":
              "What are some best practices for managing state in a large Flutter application?",
          "answer":
              "Best Practices for State Management:\n- **Keep state as simple as possible**: Avoid overcomplicating state management.\n- **Use a suitable state management solution**: Choose a library that aligns with your project's complexity.\n- **Organize your state**: Structure your state into logical units.\n- **Test your state management**: Write unit tests to ensure correctness.\n- **Consider performance implications**: Be mindful of unnecessary rebuilds and optimize your state updates.\n- **Use clear naming conventions**: Make your state variables and methods easy to understand.\n- **Leverage provider scopes**: Use provider scopes to limit the scope of state changes.\n- **Consider using a state management pattern**: Patterns like BLoC can help you structure your state management.",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "Explain One State Management solution in detail",
          "answer": "Please grade accordingly",
          "grade": 0,
          "weight": 1
        }
      ]
    },
    {
      "label": "React Native and JavaScript",
      "assesmentItems": [
        {
          "question": "What is an event loop in JavaScript?",
          "answer":
              "The event loop in JavaScript is a fundamental concept that allows JavaScript to handle asynchronous operations while maintaining its single-threaded nature. It is the mechanism that ensures non-blocking execution of code, enabling JavaScript to perform tasks like I/O operations, timers, and user interactions efficiently.\n\nHow do Event loops work?\n- **Call Stack**: JavaScript uses a call stack to keep track of the currently executing function (where the program is in its execution).\n- **Callback Queue**: Asynchronous operations, such as I/O operations or timers, are handled by the browser or Node.js runtime. When these operations are complete, corresponding functions (callbacks) are placed in the callback queue.\n- **Event Loop**: The event loop continuously checks the call stack and the callback queue. If the call stack is empty, it takes the first function from the callback queue and pushes it onto the call stack for execution.\n- **Execution**: The function on top of the call stack is executed. If this function contains asynchronous code, it might initiate further asynchronous operations.\n- **Callback Execution**: When an asynchronous operation is complete, its callback is placed in the callback queue.\n- **Repeat**: The event loop continues this process, ensuring that the call stack is always empty before taking the next function from the callback queue.",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "How does Promise chaining work?",
          "answer":
              "A Promise allows you to chain asynchronous operations using .then() and handle errors using .catch(). Each .then() returns a new Promise, allowing the next .then() to execute after the previous one resolves.",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "What are closures in JavaScript?",
          "answer":
              "A closure is created when a function retains access to its lexical scope even after the function has finished execution.\n\n```javascript\nfunction outer() {\n  let counter = 0;\n  return function inner() {\n    counter++; console.log(counter);\n  };\n}\nconst increment = outer();\nincrement(); // 1\nincrement(); // 2\n```",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "What are higher-order functions in JavaScript?",
          "answer":
              "A higher-order function is a function that can:\n- Take another function as an argument.\n- Return a function.",
          "grade": 0,
          "weight": 1
        }
      ]
    },
    {
      "label": "Version Control",
      "assesmentItems": [
        {
          "question": "Version Control and Git general understanding?",
          "answer": "Please evaluate and grade accordingly.",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "What is CICD and your experience with it?",
          "answer": "Please evaluate and grade accordingly.",
          "grade": 0,
          "weight": 1
        },
        {
          "question": "What are the basic Git commands?",
          "answer":
              "git init: Initializes a new Git repository.\ngit clone: Clones an existing repository.\ngit add: Adds changes to the staging area.\ngit commit: Commits changes to the local repository.\ngit push: Pushes changes to a remote repository.\ngit pull: Pulls changes from a remote repository.\ngit branch: Creates, lists, or deletes branches.\ngit merge: Merges branches.",
          "grade": 0,
          "weight": 1
        }
      ]
    }
  ]
};
