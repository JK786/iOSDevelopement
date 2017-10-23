//
//  ViewController.m
//  basicTableView
//
//  Created by Arun P on 10/23/17.
//  Copyright © 2017 Jibran Khan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSArray * ListOfCricketers;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.ListOfCricketers = @[@"Gilchrist",@"Hayden",@"Ponting",@"Katich",@"Lehmann",@"Warne",@"Lee",@"Gillespie",@"Martyn",@"Love",@"Agar",@"Blewett",@"Hilfenhaus",@"Siddle",@"Starc",@"Hazelwood"];
    
    _CricketersList.delegate = self;
    _CricketersList.dataSource = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.ListOfCricketers count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *cellIdentifier = @"SimpleIdentifier";
    
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"SimpleIdentifier"];
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = self.ListOfCricketers[indexPath.row];
    return cell;
}


@end