//
//  ZXYTwiigDBTest.h
//  Twiig
//
//  Created by Segard on 04/04/14.
//  Copyright (c) 2014 Segard. All rights reserved.
//

#import "ZXYTwiigAnime.h"
#import <UIKit/UIKit.h>

@interface ZXYTwiigDBTest : NSObject

@property (strong, nonatomic) NSMutableArray* Datas;
@property (strong, nonatomic) NSMutableArray* DataAnime;

-(BOOL)dbEmpty;
-(NSMutableArray*)getData;
-(void)clearData;
-(void)setDatas:(NSMutableArray *)Datas;
-(void)sendRequest:(NSString*)request;

-(NSMutableArray*)getDataAnime;

@end