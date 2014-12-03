//
//  AddNewClassViewController.m
//  education-ios
//
//  Created by xinyu_mac on 14/12/3.
//  Copyright (c) 2014年 xllyl. All rights reserved.
//

#import "AddNewClassViewController.h"
#import "DropDownListView.h"

@interface AddNewClassViewController()<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *chooseArray ;
    NSArray *list;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end
@implementation AddNewClassViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem.title = @"返回";
        // Do any additional setup after loading the view.
    list = @[@{@"image":@"german.jpg",@"label":@"德语小天才",@"sublable":@"基础教程",@"num":@"60星"},
             @{@"image":@"japan.jpg",@"label":@"日语小天才",@"sublable":@"简单教程",@"num":@"10星"},
             @{@"image":@"hanyu01.jpg",@"label":@"汉语小天才",@"sublable":@"基础教程",@"num":@"40星"},
             @{@"image":@"english.jpg",@"label":@"英语小天才",@"sublable":@"简单教程",@"num":@"60星"}];
    _tableView.dataSource = self;
    _tableView.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return list.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    UIImageView *iamgeView = (UIImageView*)[cell viewWithTag:1];
    iamgeView.image = [UIImage imageNamed:list[indexPath.row][@"image"]];
    iamgeView.layer.cornerRadius = 20;
    iamgeView.layer.masksToBounds = YES;
    
    
    UILabel *label = (UILabel*)[cell viewWithTag:2];
    label.text = list[indexPath.row][@"label"];
    
    UILabel *sublabel = (UILabel*)[cell viewWithTag:3];
    sublabel.text = list[indexPath.row][@"sublable"];
    
    UILabel *numlabel = (UILabel*)[cell viewWithTag:4];
    numlabel.text = list[indexPath.row][@"num"];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 120;
}
@end
