//
//  ViewController.m
//  yaoyigua
//
//  Created by suxianbaozi on 12-6-4.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize currentGuaLabel;
@synthesize guaIndex;
@synthesize shakeButton;
@synthesize guaList;
@synthesize currentXiang;

//摇动时候触发，控制地记挂
- (IBAction)shake:(id)sender {
    NSString *indexString = [[NSString alloc] initWithFormat:@"第%d挂",self.guaIndex+1];
    currentGuaLabel.text = indexString;
    self.guaIndex++;
    NSString *stringXiang = [[NSString alloc] init];
    stringXiang = [self stringxiang:[self randomXiang]];
    currentXiang.text = stringXiang;
}

- (NSString *)stringxiang:(int)xiang
{
    NSString *sx = [[NSString alloc] init];
    switch (xiang) {
        case YIN:
            sx = @"阴";
            break;
        case 1:
            sx = @"少阴";
            break;
        case 2:
            sx = @"少阳";
            break;
        case 3:
            sx = @"阳";
            break;
        default:
            sx = @"";
    }
    NSString *result = [[NSString alloc] initWithFormat:@"%@卦",sx];
    return result;

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
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.currentGuaLabel = nil;
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
