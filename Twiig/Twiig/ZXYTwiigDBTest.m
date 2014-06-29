//
//  ZXYTwiigDBTest.m
//  Twiig
//
//  Created by Segard on 04/04/14.
//  Copyright (c) 2014 Segard. All rights reserved.
//

#import "ZXYTwiigDBTest.h"

@interface ZXYTwiigDBTest ()

@end

@implementation ZXYTwiigDBTest

@synthesize Datas;
@synthesize DataAnime;

-(BOOL)dbEmpty
{
    if (self.Datas == nil)
        return (true);
    return (false);
}

-(NSMutableArray*)getData
{
    return (self.Datas);
}

-(void)setDatas:(NSMutableArray *)Datas
{
}

-(void)sendRequest:(NSString *)request
{
    Datas = [[NSMutableArray alloc] init];
    DataAnime = [[NSMutableArray alloc] init];
    NSInteger i = 0;
    ZXYTwiigAnime *test = [[ZXYTwiigAnime alloc] init];
    ZXYTwiigAnime *test2 = [[ZXYTwiigAnime alloc] init];
    ZXYTwiigAnime *test3 = [[ZXYTwiigAnime alloc] init];
    NSMutableArray* list = [[NSMutableArray alloc] init];
    
    [list addObject:@"Episode 1"];
    [list addObject:@"Episode 2"];
    [list addObject:@"Episode 3"];
    
    [test init:@"Test" :[UIImage imageNamed:@"logo_small"] :list];
    [test2 init:@"Test2" :[UIImage imageNamed:@"logo_small"] :list];
    
    [list addObject:@"Episode 4"];
    [test3 init:@"Test3" :[UIImage imageNamed:@"logo_small"] :list];
    
    [self.DataAnime addObject:test];
    [self.DataAnime addObject:test2];
    [self.DataAnime addObject:test3];
    while (i < 4)
    {
        if ([request isEqual: @"Main"])
        {
            [self.Datas addObject:@"News"];
            [self.Datas addObject:@"News2"];
            [self.Datas addObject:@"News3"];
        }
        else if ([request isEqualToString:@"Search"])
        {
            [self.Datas addObject:@"Result"];
            [self.Datas addObject:@"Result2"];
            [self.Datas addObject:@"Result3"];
        }
        else if ([request isEqualToString:@"Genre"])
        {
            [self.Datas addObject:@"Anime"];
            [self.Datas addObject:@"Anime2"];
            [self.Datas addObject:@"Anime3"];
        }
        i++;
    }
}

-(NSMutableArray*)getDataAnime
{
    return (DataAnime);
}

-(void)clearData
{
}

@end
