//
//  ViewController.m
//  segueTrial
//
//  Created by Arun P on 9/23/17.
//  Copyright © 2017 Arun P. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self goToHome];
}

-(void) viewDidAppear:(BOOL)animated{
      //[self goToHome];
}


- (void)goToHome{
    [self transitionToHome];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)transitionToHome{
    [self performSegueWithIdentifier:@"toHome" sender:nil];
}

- (void)transitionToOTP{
    [self performSegueWithIdentifier:@"toOTP" sender:nil];
}

- (void)transitionToPhone{
    [self performSegueWithIdentifier:@"toPhone" sender:nil];
}


- (IBAction)buttonnn:(id)sender {
    NSLog(@"DDDD");
       [self performSegueWithIdentifier:@"toPhone" sender:nil];
    
}

@end
