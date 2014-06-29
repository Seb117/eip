//
//  ZXYTwiigAnimeDetails.m
//  Twiig
//
//  Created by Segard on 03/04/14.
//  Copyright (c) 2014 Segard. All rights reserved.
//

#import "ZXYTwiigAnimeDetails.h"
#import "ZXYTwiigAnimesActions.h"

@interface ZXYTwiigAnimeDetails ()

@end

@implementation ZXYTwiigAnimeDetails
@synthesize Table;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"backgroundGradient1080p"]];
    self.view.backgroundColor = background;

    self.Table.backgroundColor = [UIColor clearColor];
    
    self.Description.text = [self.animeObject getName];
	self.Picture.image = [self.animeObject getTumbernail];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"Actions"])
    {
        ZXYTwiigAnimesActions *dvc = [segue destinationViewController];
    
        //dvc.anime = self.anime;
        dvc.anime = [self.animeObject getName];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return ([self.animeObject getEpisode].count);
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    }
    
    cell.textLabel.text = [[self.animeObject getEpisode] objectAtIndex:indexPath.row];
    //cell.textLabel.text = @"Episode";
    cell.backgroundColor = [UIColor clearColor];
    return (cell);
}

- (IBAction)unwindToDetailView:(UIStoryboardSegue *)segue
{
}

@end
