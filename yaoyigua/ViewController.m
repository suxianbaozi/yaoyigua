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
- (IBAction)shake:(id)sender {
    NSString *indexString = [[NSString alloc] initWithFormat:@"第%d挂",self.guaIndex];
    currentGuaLabel.text = indexString;
    if(self.guaIndex==6) {
        [self addGuaXiang:1];
        return;
    }
    self.guaIndex++;
}
- (BOOL) addGuaXiang:(int)xiang {
    return  FALSE;
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
    self.guaList = [[NSArray alloc] initWithObjects:@"YANG",@"YIN",@"SHAOYANG",@"SHAOYIN", nil];
    self.guaIndex = 1;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
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
