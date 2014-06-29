//
//  ZXYTwiigVideo.h
//  Twiig
//
//  Created by Segard on 17/04/14.
//  Copyright (c) 2014 Segard. All rights reserved.
//

#import <MobileVLCKit/VLCMediaPlayer.h>
#import <MobileVLCKit/MobileVLCKit.h>
#import <UIKit/UIKit.h>

//#define cheminComplet @"http://streaming.twiig.fr:1935/vod/definst/mp4:yowamushi_pedal/ld-0d94c23d-aa54-41d0-8742-277f3ee2eaaaa.mp4/Manifest"
//#define cheminComplet @"rtmp://streaming.twiig.fr:1935/vod/definst/mp4:yowamushi_pedal/ld-0d94c23d-aa54-41d0-8742-277f3ee2eaaa.mp4"
#define cheminComplet @"rtsp://streaming.twiig.fr:1935/vod/definst/mp4:yowamushi_pedal/ld-0d94c23d-aa54-41d0-8742-277f3ee2eaaa.mp4"

@interface ZXYTwiigVideo : UIViewController
{
    VLCMediaPlayer *lecteur;
    NSURL* adresse;
}
@property (weak, nonatomic) IBOutlet UIView *viewVideo;

@end

