# loadmore

一个flutter的加载更多库

使用的方案是将传入的ListView其他透传参数，ListView的children数量+1，来将child增加到最底部

当状态为idle/fail的时候 点击加载会生效，大部分情况下 idle只会持续300ms

后续再添加至pub库