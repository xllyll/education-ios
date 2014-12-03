//
//  MyInfoViewController.m
//  education-ios
//
//  Created by xinyu_mac on 14/12/3.
//  Copyright (c) 2014年 xllyl. All rights reserved.
//

#import "MyInfoViewController.h"
#import "VRGCalendarView.h"

@interface MyInfoViewController()<UITableViewDataSource,UITableViewDelegate,VRGCalendarViewDelegate>
{
    
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
@implementation MyInfoViewController
-(void)viewDidLoad{
    [super viewDidLoad];
    _tableView.dataSource = self;
    _tableView.delegate = self;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
    if (indexPath.row == 0) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell1" forIndexPath:indexPath];
    }
    if (indexPath.row == 1) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
        VRGCalendarView *calendView = [[VRGCalendarView alloc]init];
        calendView.delegate = self;
        [cell addSubview:calendView];
    }
    if (indexPath.row == 2) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        UIButton *bt = (UIButton *)[cell viewWithTag:31];
        bt.layer.cornerRadius = 20;
    }
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        return 200;
    }
    if (indexPath.row == 1) {
        return 400;
    }
    if (indexPath.row == 2) {
        return 60;
    }
    return 44;
}

-(void)calendarView:(VRGCalendarView *)calendarView switchedToMonth:(int)month targetHeight:(float)targetHeight animated:(BOOL)animated {
    NSDate *currentDate = [NSDate date];
    NSCalendar* calendar = [NSCalendar currentCalendar];
    NSDateComponents* components = [calendar components:NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit fromDate:currentDate]; // Get necessary date components
    
    [components month]; //gives you month
    [components day]; //gives you day
    [components year];
    
    if (month==[components month]) {
        NSArray *dates = [NSArray arrayWithObjects:[NSNumber numberWithInt:1],[NSNumber numberWithInt:5], nil];
        [calendarView markDates:dates];
    }
    
    //    [_detailScrollView setFrame:CGRectMake(0, targetHeight+(IOS6_LATER?20:0), 320, self.view.bounds.size.height-targetHeight)];
}

-(void)calendarView:(VRGCalendarView *)calendarView dateSelected:(NSDate *)date lunarDict:(NSMutableDictionary*) dict
{
    
}
@end
