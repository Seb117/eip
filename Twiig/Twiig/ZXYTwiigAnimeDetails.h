//
//  ZXYTwiigAnimeDetails.h
//  Twiig
//
//  Created by Segard on 03/04/14.
//  Copyright (c) 2014 Segard. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "ZXYTwiigAnime.h"

@interface ZXYTwiigAnimeDetails : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *Picture;
@property (weak, nonatomic) IBOutlet UILabel *Description;
@property (weak, nonatomic) IBOutlet UITableView *Table;

@property (strong, nonatomic) id item;
@property (strong, nonatomic) id anime;
@property (strong, nonatomic) id from;

@property (strong, nonatomic) ZXYTwiigAnime* animeObject;

@end
