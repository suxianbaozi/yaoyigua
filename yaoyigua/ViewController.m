//
//  ViewController.m
//  yaoyigua
//
//  Created by suxianbaozi on 12-6-4.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize guaIndex;
@synthesize shakeButton;
@synthesize guaList;
@synthesize gua0;
@synthesize gua1;
@synthesize gua2;
@synthesize gua3;
@synthesize gua4;
@synthesize gua5;
@synthesize guaLabels;

//摇动时候触发，控制地记挂
- (IBAction)shake:(id)sender {
    
    if (guaIndex==0) {
        
        for (UILabel *cur in guaLabels) {
            cur.text = @"";
        }
    }
    NSString *stringXiang = [[NSString alloc] init];
    stringXiang = [self stringxiang:[self randomXiang]];
    
    UILabel *currentLabel  = [[UILabel alloc] init];
    currentLabel = [guaLabels objectAtIndex:guaIndex];
    currentLabel.text = stringXiang;
    guaIndex++;
    if(guaIndex==6) {
        guaIndex = 0;
    }
}

- (NSString *)stringxiang:(int)xiang
{
    NSString *sx = [[NSString alloc] init];
    switch (xiang) {
        case YIN:
            sx = @"老阴";
            break;
        case 1:
            sx = @"少阴";
            break;
        case 2:
            sx = @"少阳";
            break;
        case 3:
            sx = @"老阳";
            break;
        default:
            sx = @"";
    }
    
    return sx;

}
//随机获取一个卦象

- (int) randomXiang
{
    int current = 0;
    int oneNum = 0;
    
    //第一个数
    for (int i=0; i<3; i++) {
        current = random()%2;
        if(current==1) {
            oneNum++;
        }
    }
    switch (oneNum) {
        case 0:
            return YIN;
            break;
        case 1:
            return SHOYIN;
            break;
        case 2:
            return SHAOYANG;
            break;
        case 3:
            return YANG;
            break;
        default:
            return -1;
    }
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.guaList = [[NSArray alloc] initWithObjects:YIN,YIN,YIN,YIN,YIN,YIN, nil];
    self.guaIndex = 0;
    self.guaLabels = [[NSArray alloc] initWithObjects:gua0,gua1,gua2,gua3,gua4,gua5,nil];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    self.shakeButton = nil;
    self.guaList = nil;
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
