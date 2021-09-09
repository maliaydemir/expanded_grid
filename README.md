## Installing
```yaml
dependencies:
	..
	..
  expanded_grid:
    git:
      url: https://github.com/maliaydemir/expanded_grid.git
```			
## Usage Example

```dart
ExpandedGrid(
          crossAxisCount: 2,
          children: [
            Container(
              key: GlobalKey(),
              color: Colors.amberAccent,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  color: Colors.red,
                  child: Center(
                      child: Text(
                        'TEST TEST',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      )),
                ),
              ),
            ),
            Icon(
              Icons.edit,
              size: 150,
            ),
            Icon(Icons.refresh),
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.blue,
            ),
            Icon(Icons.delete),
            Icon(Icons.refresh),
            Container(
              color: Colors.green,
            ),
          ],
        )
```

![Screenshot_1628619108](https://user-images.githubusercontent.com/24276512/128912728-f4b4765b-c584-4a1b-9d19-bb97476f008b.png)
