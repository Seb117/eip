//
//  ZXYTwiigSearch.h
//  Twiig
//
//  Created by Segard on 02/04/14.
//  Copyright (c) 2014 Segard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZXYTwiigSearch : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property NSArray *Data;
@property (strong, nonatomic) IBOutlet UITableView *Table;
@property (weak, nonatomic) IBOutlet UITextField *Anime;
@end
