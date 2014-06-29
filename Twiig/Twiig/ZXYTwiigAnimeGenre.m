//
//  ZXYTwiigAnime.m
//  Twiig
//
//  Created by Segard on 29/03/14.
//  Copyright (c) 2014 Segard. All rights reserved.
//

#import "ZXYTwiigAnimeGenre.h"
#import "ZXYTwiigAnimeResult.h"

@interface ZXYTwiigAnimeGenre ()
@end

@implementation ZXYTwiigAnimeGenre

@synthesize data;
@synthesize Table;

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"backgroundGradient1080p"]];
    self.view.backgroundColor = background;
    
    Table.backgroundColor = [UIColor clearColor];
    
    data = @[@"action", @"aventure", @"combat", @"comedie", @"drame", @"ecchi", @"historique", @"romance", @"science_fiction", @"sport"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"Genre"])
    {
        ZXYTwiigAnimeResult *dvc = [segue destinationViewController];
        NSInteger selectedIndex = [[self.Table indexPathForSelectedRow] row];
       
        NSString*   request = @"SELECT anime FROM Anime WHERE genre LIKE '";
        NSString*   genre = [[NSString stringWithFormat:@"%@", [self.data objectAtIndex:selectedIndex]] stringByAppendingString:@"';"];
        
        request = [request stringByAppendingString:genre];
        dvc.from = @"Genre";
        dvc.request = request;
        
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return (10);
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    UIImageView *image= (UIImageView*)[Table viewWithTag:1];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    }
    image.image = [UIImage imageNamed:[data objectAtIndex:indexPath.row]];
    cell.backgroundColor = [UIColor clearColor];
    return (cell);
}

- (IBAction)unwindToGenreView:(UIStoryboardSegue *)segue
{
}

@end
