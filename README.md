version 0.2.0
本次提交更新：
更新了主页样式，更新的文件包括：
ItemData.ets -- 增加了存食物信息的类
![image](https://github.com/Vector215/OpenHarmony-menu/assets/157196890/a9c2d002-b20e-4bb9-a495-17af55069e3f)
如果想增加自己的信息，可以在类里增加新的变量，也可以新建方便自己使用的类，信息暂时存在mock/Data.ets中。
Index.ets  -- 修改了Index的展示方式
MainPage.ets -- 修改了MainPage内部的view
新增了两个文件夹和两个文件：
mock/Data.ets -- 存模拟展示数据
common/Constances.ets -- 用于存一些常量,可以存自己要用到的常量

可能存在的问题：
有时候编译会报错一个变量undefined的错误，但把错误行注释掉，重新编译，然后将注释再注释回来，刷新预览器就会解决这个问题，原因暂时未知。
