//
//  ViewController.h
//  yaoyigua
//
//  Created by suxianbaozi on 12-6-4.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#define YIN 0b00 //0
#define SHOYIN 0b01 //1
#define YANG 0b11 //3
#define SHAOYANG 0b10 //2
#define guaNum 6
@interface ViewController : UIViewController
{
    UIButton *shakeButton;
    int guaIndex;
    NSArray *guaList;
    UILabel *gua0;
    UILabel *gua1;
    UILabel *gua2;
    UILabel *gua3;
    UILabel *gua4;
    UILabel *gua5;
    NSArray *guaLabels;
}

@property (nonatomic,retain) IBOutlet UIButton *shakeButton;
@property (nonatomic,retain) IBOutlet UILabel *gua0;
@property (nonatomic,retain) IBOutlet UILabel *gua1;
@property (nonatomic,retain) IBOutlet UILabel *gua2;
@property (nonatomic,retain) IBOutlet UILabel *gua3;
@property (nonatomic,retain) IBOutlet UILabel *gua4;
@property (nonatomic,retain) IBOutlet UILabel *gua5;
@property (nonatomic,retain) NSArray *guaLabels;
@property int guaIndex;
@property (nonatomic,retain) NSArray *guaList;

-(IBAction) shake:(id)sender;
-(int) randomXiang;
-(NSString *) stringxiang:(int)xiang;

@end
