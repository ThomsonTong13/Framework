# Framework
Packaging dynamic libraries

## Introduction
Framework是Cocoa/Cocoa Touch程序中使用的一种资源打包方式，可以将将代码文件、头文件、资源文件、说明文档等集中在一起，方便开发者使用，作为一名Cocoa/Cocoa Touch程序员每天都要跟各种各样的Framework打交道。Cocoa/Cocoa Touch开发框架本身提供了大量的Framework，比如Foundation.framework/UIKit.framework/AppKit.framework等。需要注意的是，这些framework无一例外都是动态库。

## Getting started

### Packaging dynamic libraries

1. 打开Xcode，新建项目，选择iOS->Framework & Library->Cocoa Touch Framework->输入动态库的相关信息(如我工程里的SubModule).
2. 创建动态库需要使用到的类别(如我工程里的HelloWorldViewController).
3. 选中工程文件->TARGETS->Build Phases->Headers，将需要暴露给其他地方使用到的头文件从Project里拖到Public里.
4. 在自动生成的动态库.h文件(这里是SubModule.h)将你所创建类的.h文件包含进来.
5. 选择真机编译(若没真机选择Generic iOS Device)之后会在Products文件夹生成动态库(这里是SubModule.framework，若该文件为红色即表示该路径不存在，需重新编译即可).

### Use dynamic libraries

自己生成动态库的使用方式与系统动态库使用方式几乎一样，选中工程文件->TARGETS->General->Embedded Binaries->添加你刚编译完后的动态库即可使用.也可以和我的项目一样创建一个空的Workspace，把主工程和动态库放到同一个Workspace里方便管理，使用时包含头文件即可(如RootModule里的ViewController).