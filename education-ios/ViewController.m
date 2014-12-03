//
//  ViewController.m
//  education-ios
//
//  Created by xinyu_mac on 14/12/2.
//  Copyright (c) 2014年 xllyl. All rights reserved.
//

#import "ViewController.h"
#import "VRGCalendarView.h"

@interface ViewController ()<VRGCalendarViewDelegate>
@property (weak, nonatomic) IBOutlet VRGCalendarView *calendenview;
@property (weak, nonatomic) IBOutlet UIButton *firstBt;
@property (weak, nonatomic) IBOutlet UIImageView *musicbox_image;
@property (weak, nonatomic) IBOutlet UIImageView *deyuImageView;
@property (weak, nonatomic) IBOutlet UIButton *topmenuBt;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //
    // Do any additional setup after loading the view, typically from a nib.
    
//    VRGCalendarView *calendar = [[VRGCalendarView alloc] init];
//    calendar.delegate=self;
//    
//    [self.view addSubview:calendar];
    
    _topmenuBt.layer.cornerRadius = _topmenuBt.bounds.size.height/2;
    _topmenuBt.layer.masksToBounds = YES;
    
    _firstBt.layer.cornerRadius = 20;
    _firstBt.layer.masksToBounds = YES;
    
    _musicbox_image.layer.cornerRadius = 20;
    _musicbox_image.layer.masksToBounds = YES;
    
    _deyuImageView.layer.cornerRadius = 20;
    _deyuImageView.layer.masksToBounds = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
