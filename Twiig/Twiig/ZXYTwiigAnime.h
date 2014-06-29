//
//  ZXYTwiigAnime.h
//  Twiig
//
//  Created by Segard on 10/06/14.
//  Copyright (c) 2014 Segard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZXYTwiigAnime : NSObject
{
    NSString*    _name;
    NSString*    _sumary;
    NSMutableArray* _episode;
    
    UIImage*     _tumbernail;
    
}

-(void)init:(NSString*)name :(UIImage*)tumbernail :(NSMutableArray*)episode;
-(NSString*)getName;
-(UIImage*)getTumbernail;
-(NSMutableArray*)getEpisode;

@end
