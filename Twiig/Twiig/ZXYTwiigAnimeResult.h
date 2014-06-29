//
//  ZXYTwiigAnimeByGenre.h
//  Twiig
//
//  Created by Segard on 02/04/14.
//  Copyright (c) 2014 Segard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZXYTwiigAnimeResult : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *Table;
@property (strong, nonatomic) IBOutlet UILabel *Title;
@property (weak, nonatomic) IBOutlet UIButton *Back;

@property (strong, nonatomic) id from;
@property (strong, nonatomic) id request;

@end
