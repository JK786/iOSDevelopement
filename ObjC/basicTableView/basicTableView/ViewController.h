//
//  ViewController.h
//  basicTableView
//
//  Created by Arun P on 10/23/17.
//  Copyright © 2017 Jibran Khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *CricketersList;

@end

