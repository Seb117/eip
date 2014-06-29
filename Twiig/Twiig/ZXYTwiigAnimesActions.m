//
//  ZXYTwiigAnimesActions.m
//  Twiig
//
//  Created by Segard on 03/04/14.
//  Copyright (c) 2014 Segard. All rights reserved.
//

#import "ZXYTwiigAnimesActions.h"

@interface ZXYTwiigAnimesActions ()

@end

@implementation ZXYTwiigAnimesActions

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"backgroundGradient1080p"]];
    self.view.backgroundColor = background;
    
    self.Title.text = self.anime;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
