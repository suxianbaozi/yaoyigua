//
//  ViewController.h
//  yaoyigua
//
//  Created by suxianbaozi on 12-6-4.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UILabel *currentGuaLabel;
    UIButton *shakeButton;
    int guaIndex;
    NSArray *guaList;
}
@property (nonatomic,retain) IBOutlet UILabel *currentGuaLabel;
@property (nonatomic,retain) IBOutlet UIButton *shakeButton;
@property int guaIndex;
@property (nonatomic,retain) NSArray *guaList;


-(IBAction) shake:(id)sender;
-(BOOL) addGuaXiang:(int)xiang;
@end
