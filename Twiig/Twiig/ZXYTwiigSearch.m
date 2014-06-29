//
//  ZXYTwiigSearch.m
//  Twiig
//
//  Created by Segard on 02/04/14.
//  Copyright (c) 2014 Segard. All rights reserved.
//

#import "ZXYTwiigSearch.h"
#import "ZXYTwiigAnimeResult.h"

@interface ZXYTwiigSearch ()
@end

@implementation ZXYTwiigSearch

@synthesize Data;
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
    
    Data = @[@"all", @"action", @"aventure", @"combat", @"comedie", @"drame", @"ecchi", @"historique", @"romance", @"science_fiction", @"sport"];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"Search"])
    {
        ZXYTwiigAnimeResult *dvc = [segue destinationViewController];
        
        NSInteger selectedIndex = [[self.Table indexPathForSelectedRow] row];
        NSString*   genre = [[NSString stringWithFormat:@"%@", [self.Data objectAtIndex:selectedIndex]] stringByAppendingString:@"';"];

        if ([genre isEqualToString:@"all';"])
            genre = @"';";
        dvc.from = @"Search";
        if ([self.Anime.text isEqualToString:@""])
        {
            NSString* request = @"SELECT anime FROM Anime WHERE genre LIKE '";
            
            request = [request stringByAppendingString:genre];
            dvc.request = request;
        }
        else
        {
            NSString* request = @"SELECT anime FROM Anime WHERE anime LIKE '";
            NSString* anime = [self.Anime.text stringByAppendingString:@"' && genre LIKE '"];
            
            request = [request stringByAppendingString:anime];
            request = [request stringByAppendingString:genre];
            dvc.request = request;
        }
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return (11);
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    UIImageView *image= (UIImageView*)[Table viewWithTag:1];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    }
    
    image.image = [UIImage imageNamed:[Data objectAtIndex:indexPath.row]];
    cell.backgroundColor = [UIColor clearColor];
    return (cell);
}

- (IBAction)unwindToSearchView:(UIStoryboardSegue *)segue
{
}

@end
