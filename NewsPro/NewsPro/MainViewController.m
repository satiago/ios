//
//  MainViewController.m
//  NewsPro
//
//  Created by satiago on 14-12-16.
//  Copyright (c) 2014年 satiago. All rights reserved.
//

#import "MainViewController.h"
#import "AboutViewController.h"
#import "Constants.h"

@interface MainViewController ()

@end

@implementation MainViewController

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
	[self.navigationItem setTitle:@"新闻浏览"];
	self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
	
	//设置左按钮
	UIBarButtonItem * leftButton = [[UIBarButtonItem alloc] initWithTitle:@"关于" style:UIBarButtonItemStylePlain target:self action:@selector(leftButtonClick)];
	
	[self.navigationItem setLeftBarButtonItem:leftButton];
	
	//设置右按钮
	UIBarButtonItem * rightButton = [[UIBarButtonItem alloc] initWithTitle:@"回首页" style:UIBarButtonItemStylePlain target:self action:@selector(rightButtonClick)];
	
	[self.navigationItem setRightBarButtonItem:rightButton];
	
	//webview
	NSURL* url = [NSURL URLWithString:HOME_URL];
	NSURLRequest* request = [NSURLRequest requestWithURL:url];
	[self.WebView loadRequest:request];
}

-(void) leftButtonClick
{
	AboutViewController *AboutView = [[AboutViewController alloc] initWithNibName:@"AboutViewController" bundle:nil];
	
	[self.navigationController pushViewController:AboutView animated:NO];
}

-(void) rightButtonClick
{
	//webview
	NSURL* url = [NSURL URLWithString:HOME_URL];
	NSURLRequest* request = [NSURLRequest requestWithURL:url];
	[self.WebView loadRequest:request];
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
