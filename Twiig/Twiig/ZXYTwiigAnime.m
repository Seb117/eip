//
//  ZXYTwiigAnime.m
//  Twiig
//
//  Created by Segard on 10/06/14.
//  Copyright (c) 2014 Segard. All rights reserved.
//

#import "ZXYTwiigAnime.h"

@implementation ZXYTwiigAnime

-(void)init:(NSString*)name :(UIImage*)tumbernail :(NSMutableArray*)episode;
{
    _name = name;
    _tumbernail = tumbernail;
    _episode = episode;
}

-(NSString*)getName
{
    return (_name);
}

-(UIImage*)getTumbernail
{
    return (_tumbernail);
}

-(NSMutableArray*)getEpisode
{
    return  (_episode);
}

@end

