## Valpi
A library to facilitate easier access to the [Riot Valorant API](https://developer.riotgames.com/apis#val-content-v1) to extract related valorant related data.

**Warning** under progress library. It certainly supports the most basic functions for the endpoints however there is **no** guarantee that the library's functions won't fail.

## Usage

After adding the library to your pubspec.yaml file using `flutter pub add valpi` or `dart pub add valpi` depending on where your app is a flutter applocation or a pure dart one. Nex,m you are to import it with the follow line of code:
```dart
import 'package:valpi/valpi.dart';
```
 Now, the second step is to initialise the class:
 ```dart
 Valpi client = Valpi("API_KEY", "SERVER_CODE");
 ```

Here, the initialisation asks for two parameters (both of type String), the API_KEY here is the api key that is necessary to even begin with (you can obtain one from [the riot developer portal](https://developer.riotgames.com/)). The server code is just a two character code which represents the region you wish to access. It can have the following values:

| Region |      Code      |
| :----: | :------------: |
|   AP   |  Asia-Pacific  |
|   BR   |     Brazil     |
|   EU   | European Union |
|   KR   |     Korea      |
| LATAM  | Latin America  |
|   NA   | North America  |

For now any value is allowed, however it will throw an exception if it's none of the values specified above, this is to be fixed by the use of enums in later releases.

With all these values in, your class is initiated and ready to go.