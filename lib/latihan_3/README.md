# Latihan 3

Pada latihan 3 ini berisikan tentang Responsive layout pada Flutter. Kita akan belajar menggunakan MediaQuery dan juga LayoutBuilder

## Responsive and Adaptive

Adaptive and responsive can be viewed as separate dimensions of an app: you can have an adaptive app that is not responsive, or vice versa. And, of course, an app can be both, or neither.

### MediaQuery

This gives you the size, orientation, etc, of your current app. </br>
Seperti pada penjelasan di Documentation resminya Flutter sendiri, MediaQuery akan mengembalikan nilai ukuran Tinggi ataupun lebar sesuai dengan ukuran layar kalian.</br>
MediaQuery adalah kelas yang dapat kita gunakan untuk mendapatkan ukuran dan juga orientasi layar ~ Dicoding</br>
Example code :

```dart
 var screenSizeWidth = MediaQuery.of(context).size,width;
 // Menampilkan berapa lebar ukuran layar kalian
```

### LayoutBuilder

From its builder property, you get a BoxConstraints object. Examine the constraint’s properties to decide what to display.</br>
Perbedaan umum antara MediaQuery dan Layout Builder adalah MediaQuery akan mengembalikan ukuran layar yang digunakan, sedangkan LayoutBuilder mengembalikan ukuran maksimum dari widget tertentu.</br>
Example code:

```dart
LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'MediaQuery: ${screenSize.width.toStringAsFixed(2)}',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'LayoutBuilder: ${constraints.maxWidth}',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
            ),
```
