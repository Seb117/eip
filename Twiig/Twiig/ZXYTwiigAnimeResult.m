//
//  ZXYTwiigAnimeByGenre.m
//  Twiig
//
//  Created by Segard on 02/04/14.
//  Copyright (c) 2014 Segard. All rights reserved.
//

#import "ZXYTwiigAnimeResult.h"
#import "ZXYTwiigAnimeDetails.h"
#import "ZXYTwiigDBTest.h"

@interface ZXYTwiigAnimeResult ()
@property ZXYTwiigDBTest* db;
@property NSMutableArray* Data;
@property NSMutableArray* DataAnime;
@end

@implementation ZXYTwiigAnimeResult

@synthesize from;
@synthesize request;
@synthesize db;

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

    self.db = [[ZXYTwiigDBTest alloc] init];
  
    if ([db dbEmpty])
        [db sendRequest:from];
    
    self.Data = [db getData];
    self.DataAnime = [db getDataAnime];
    
    self.Title.text = @"Animes";
    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"backgroundGradient1080p"]];
    self.view.backgroundColor = background;
    
    self.Table.backgroundColor = [UIColor clearColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"Details"])
    {
        ZXYTwiigAnimeDetails *dvc = [segue destinationViewController];
        NSInteger selectedIndex = [[self.Table indexPathForSelectedRow] row];
        
        dvc.anime = [NSString stringWithFormat:@"%@", [self.Data objectAtIndex:selectedIndex]];
        dvc.from = from;
        dvc.animeObject = [self.DataAnime objectAtIndex:selectedIndex];
    }
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat pos = scrollView.contentOffset.y;
    CGFloat height = scrollView.contentSize.height - 400;
    
    if (pos > height)
    {
        ZXYTwiigAnime* test = [[ZXYTwiigAnime alloc] init];
        NSMutableArray* list = [[NSMutableArray alloc] init];
        
        [list addObject:@"Episode 1"];
        [list addObject:@"Episode 2"];
        [list addObject:@"Episode 3"];

        
        [test init:@"More" :[UIImage imageNamed:@"logo_small"] :list];
        
        [self.Data addObject:@"More"];
        [self.DataAnime addObject:test];
        [self.Table reloadData];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.DataAnime count];
    //return [self.Data count];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    }
    
    ZXYTwiigAnime *test = [self.DataAnime objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [test getName];
    cell.imageView.image = [test getTumbernail];
    
    /*
    cell.textLabel.text = [self.Data objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"logo_small"];
    */
    
    cell.backgroundColor = [UIColor clearColor];
    
    return (cell);
}

- (IBAction)Back:(id)sender
{
    if ([self.from isEqualToString:@"Genre"])
        [self performSegueWithIdentifier:@"BackToGenre" sender:self];
    else if ([self.from isEqualToString:@"Search"])
        [self performSegueWithIdentifier:@"BackToSearch" sender:self];
    else if ([self.from isEqualToString:@"Main"])
        [self performSegueWithIdentifier:@"BackToMain" sender:self];
}

- (IBAction)unwindToResultView:(UIStoryboardSegue *)segue
{
    [self.Table reloadData];
}

@end
