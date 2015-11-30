# Framework
Packaging dynamic libraries

## Introduction

Framework is the Cocoa/Cocoa Touch program which is the way of a resource pack, it coule be packaging code files, header files, resource files, documentation together, convenient for developers to use, as a Cocoa/Cocoa Touch programmers every day to deal with all kinds of Framework.The Cocoa/Cocoa Touch development Framework itself offers a wide range of Framework, such as the Foundation. The Framework/UIKit Framework/AppKit Framework, etc.It is important to note that the framework without exception are dynamic libraries.

## Getting started

### Packaging dynamic libraries

1. Open Xcode，New Project，select iOS->Framework & Library->Cocoa Touch Framework->input information of dynamic libraries(eg. SubModule).
2. Create dynamic libraries need to use the categories(eg. HelloWorldViewController).
3. Select project file->TARGETS->Build Phases->Headers，drag `.h` files from `Project` item to `Public` if your `.h` files need exposed.
4. Import your create categories `.h` files in `SubModule.h`.
5. Choose real machine compile (if not real machine selection Generic iOS Device) after the Products folder to generate dynamic library (here is the SubModule. Framework, if the file in red indicates that the path was not found, you just need to recompile).

### Use dynamic libraries

Select project->TARGETS->General->Embedded Binaries->Add your compile framework. You also like my project to create an empty Workspace, put the main project and dynamic library in convenient management, in the same Workspace when used include the header files (eg. RootModule ViewController).

