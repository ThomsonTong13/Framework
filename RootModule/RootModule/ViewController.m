//
//  ViewController.m
//  RootModule
//
//  Created by Thomson on 15/11/30.
//  Copyright © 2015年 Kemi. All rights reserved.
//

#import "ViewController.h"
#import <SubModule/SubModule.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)push:(id)sender
{
    HelloWorldViewController *helloVc = [[HelloWorldViewController alloc] initWithNibName:NSStringFromClass([HelloWorldViewController class]) bundle:[NSBundle bundleForClass:[HelloWorldViewController class]]];

    [self.navigationController pushViewController:helloVc animated:YES];
}

@end
