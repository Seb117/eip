//
//  ZXYTwiigVideo.m
//  Twiig
//
//  Created by Segard on 17/04/14.
//  Copyright (c) 2014 Segard. All rights reserved.
//

#import "ZXYTwiigVideo.h"

@interface ZXYTwiigVideo ()

@end

@implementation ZXYTwiigVideo

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
    
    lecteur = [[VLCMediaPlayer alloc] init];
    lecteur.delegate = self;
    lecteur.drawable = self.viewVideo;
    
    lecteur.media = [VLCMedia mediaWithURL:[NSURL URLWithString:cheminComplet]];
    
    [lecteur play];
    
    //NSURL *url = [NSURL URLWithString:cheminComplet];
    //lecteur = [[MPMoviePlayerController alloc] initWithContentURL:adresse];
    //lecteur.view.frame = self.viewVideo.frame;
    //[self.view addSubview:lecteur.view];
    //[lecteur play];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end