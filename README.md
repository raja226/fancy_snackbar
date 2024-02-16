
# Fancy Snackbar

Fancy snackbar package lets you add a beautiful snackbar to your Flutter app.

## Installation 

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  fancy_snackbar: ^0.0.1
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:fancy_snackbar/fancy_snackbar.dart';
```

## Example
There are a number of properties that you can modify:

 - message (Different type of message can put)
 - logo (icons can modify)               
 - color 
 - textColor
 - seconds

<hr>

<table>
<tr>
<td>

```dart
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Package example"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              FancySnackbar.show(
                  context, "Hi, I'm happy to use the Fancy Snackbar!",
                  logo: const Icon(Icons.done_all, color: Colors.white),
                  seconds: 05);
            },
            child: const Text("Show SnackBar!!")),
      ),
    );
  }
}
```

</td>
</tr>
</table>

## Usage
```dart
FancySnackbar.show(context, "Hi, I'm happy to use the Fancy Snackbar!",
                  logo: const Icon(Icons.done_all, color: Colors.white),
                  seconds: 05);
```
## Next Goals

 - [x] Add onTap for functions and Poistions of the snackbar.
 Now, you can specify the onTap and specify a function. 
 - [ ] Add more  functionality to the package.
