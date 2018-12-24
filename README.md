# loadmore

[![pub package](https://img.shields.io/pub/v/loadmore.svg)](https://pub.dartlang.org/packages/loadmore)
[![GitHub](https://img.shields.io/github/license/OpenFlutter/flutter_listview_loadmore.svg)](https://github.com/OpenFlutter/flutter_listview_loadmore/tree/master/loadmore)

A loadMore library

only support listview

[中文构思思路和使用说明可以看简书](https://www.jianshu.com/p/abfd6f525316)

## screenshot

![img](https://github.com/CaiJingLong/some_asset/blob/master/loadmore1.gif)

## whole example

show https://github.com/CaiJingLong/flutter_listview_loadmore

## install

in `pubspec.yaml`

```
dependencies:
  loadmore: ^1.0.2
```

import in dartfile:

```
import 'package:loadmore/loadmore.dart';
```

use in build:

```dart
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Container(
        child: LoadMore(
          isFinish: count >= 60,
          onLoadMore: _loadMore,
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Text(list[index].toString()),
                height: 40.0,
                alignment: Alignment.center,
              );
            },
            itemCount: count,
          ),
        ),
      ),
    );
  }

  Future<bool> _loadMore() async {
    print("onLoadMore");
    await Future.delayed(Duration(seconds: 0, milliseconds: 100));
    load();
    return true;
  }
```

properties use:

```
child: Widget ,required , support ListView ListView.builder ListView.separated, other is not support.
onLoadMore:required A Function , `typedef Future<bool> FutureCallBack();` , reture true is success and status delay,return false or null ,then the status will change to fail.
isFinish: bool, optional, if true, then the status will change to finish ,default is false
delegate: LoadMoreDelegate,optional, see the LoadMoreDelegate class,default is DefaultLoadMoreDelegate
textBuilder: optional, the result will show in loading view ,if you use default delegate. default is DefaultLoadMoreText.chinese,
whenEmptyLoad: bool ,optional, default is true, when [whenEmptyLoad] is true, and when listView children length is 0,or the itemCount is 0,not build loadMoreWidget.
```

```dart
abstract class LoadMoreDelegate {
  const LoadMoreDelegate();

  double widgetHeight(LoadMoreStatus status) => _defaultLoadMoreHeight; // the loadMore height. default is 80.0

  Duration loadMoreDelay() => Duration(milliseconds: _loadMoreDelay);// When widget is created, the refresh delay time is triggered.

  Widget buildChild(LoadMoreStatus status); // build your widget in the loadmore widget.
}
```

## other

homePage: https://github.com/CaiJingLong/flutter_listview_loadmore
emailto me : cjl_spy@163.com

## LICENSE

APACHE 2.0
