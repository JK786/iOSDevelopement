//
//  ViewController.m
//  ScrollView
//
//  Created by Arun P on 10/23/17.
//  Copyright © 2017 Jibran Khan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [_scroller setScrollEnabled:YES];
    [_scroller setContentSize:CGSizeMake(320, 1000)];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
