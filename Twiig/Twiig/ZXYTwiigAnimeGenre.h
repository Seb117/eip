//
//  ZXYTwiigAnime.h
//  Twiig
//
//  Created by Segard on 29/03/14.
//  Copyright (c) 2014 Segard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZXYTwiigAnimeGenre : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property NSArray *data;
@property (strong, nonatomic) IBOutlet UITableView* Table;
@end