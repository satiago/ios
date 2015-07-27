//
//  AboutViewController.h
//  NewsPro
//
//  Created by satiago on 14-12-16.
//  Copyright (c) 2014年 satiago. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AboutViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
