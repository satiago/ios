//
//  AboutViewController.m
//  NewsPro
//
//  Created by satiago on 14-12-16.
//  Copyright (c) 2014年 satiago. All rights reserved.
//

#import "AboutViewController.h"
#import "UserViewController.h"
#import "SoftViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

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
	[self.navigationItem setTitle:@"关于"];
	self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	// 设置cell的标示符
	static NSString *CellID = @"InfoID";
	//当表视图需要绘制一行时,会优先使用表视图里的可重用队列里的cell
	UITableViewCell *Cell = [tableView dequeueReusableCellWithIdentifier:CellID];
	
	if(Cell == nil)
	{
		//当cell为空时，
		Cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellID];
		
		// 添加列表项的→_→箭头
		Cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	}
	
	if (indexPath.section == 0) {
		if (indexPath.row == 0) {
			Cell.textLabel.text = @"用户信息";
		}
		
		if (indexPath.row == 1) {
			Cell.textLabel.text = @"软件信息";
		}
	}
	
	return Cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 2;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
	
	if (indexPath.section == 0) {
		if (indexPath.row == 0) {
			UserViewController* userView = [[UserViewController alloc] initWithNibName:@"UserViewController" bundle:nil];
			
			[self.navigationController pushViewController:userView animated:NO];
		}
		
		if (indexPath.row == 1) {
			SoftViewController* softView = [[SoftViewController alloc] initWithNibName:@"SoftViewController" bundle:nil];
			
			[self.navigationController pushViewController:softView animated:NO];
		}
	}
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
