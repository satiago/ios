//
//  SoftViewController.m
//  NewsPro
//
//  Created by satiago on 14-12-16.
//  Copyright (c) 2014年 satiago. All rights reserved.
//

#import "SoftViewController.h"
#import "Constants.h"

@interface SoftViewController ()

@end

@implementation SoftViewController

-(id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	
	if (self) {
		
	}
	
	return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
	[self.navigationItem setTitle:@"软件信息"];
	
	//webview
	NSURL* url = [NSURL URLWithString:SOFT_URL];
	NSURLRequest* request = [NSURLRequest requestWithURL:url];
	[self.webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
