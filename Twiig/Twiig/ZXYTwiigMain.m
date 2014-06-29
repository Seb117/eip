//
//  ZXYTwiigMain.m
//  Twiig
//
//  Created by Segard on 28/03/14.
//  Copyright (c) 2014 Segard. All rights reserved.
//

#import "ZXYTwiigMain.h"
#import "ZXYTwiigAnimeResult.h"

@interface ZXYTwiigMain ()

@end

@implementation ZXYTwiigMain

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
	// Do any additional setup after loading the view.

    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"backgroundGradient1080p"]];
    self.view.backgroundColor = background;
    
    self.News.backgroundColor = [UIColor clearColor];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"News"])
    {
        ZXYTwiigAnimeResult *dvc = [segue destinationViewController];
        NSString* request = @"SELECT anime FROM Anime ORDER BY DESC;";
        
        dvc.from = @"Main";
        dvc.request = request;
    }
}

- (IBAction)unwindToMasterView:(UIStoryboardSegue *)segue
{
}


@end
