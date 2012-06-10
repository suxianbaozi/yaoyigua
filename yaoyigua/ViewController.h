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

@interface ViewController : UIViewController
{
    UILabel *currentGuaLabel;
    UILabel *currentXiang;
    UIButton *shakeButton;
    int guaIndex;
    NSArray *guaList;
    
}

@property (nonatomic,retain) IBOutlet UILabel *currentGuaLabel;
@property (nonatomic,retain) IBOutlet UIButton *shakeButton;
@property int guaIndex;
@property (nonatomic,retain) NSArray *guaList;
@property (nonatomic,retain) IBOutlet UILabel *currentXiang;

-(IBAction) shake:(id)sender;
-(int) randomXiang;
-(NSString *) stringxiang:(int)xiang;

@end
