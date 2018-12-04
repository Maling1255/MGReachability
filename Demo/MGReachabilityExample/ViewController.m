//
//  ViewController.m
//  MGReachabilityExample
//
//  Created by maling on 2018/10/10.
//  Copyright © 2018年 maling. All rights reserved.
//

#import "ViewController.h"
#import "MGReachability.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSLog(@"JJJJJJJJJJ  %@", [MGReachability networkStatusIdentier]);
    
}


@end
