//
//  ZXYTwiigViewController.m
//  Twiig
//
//  Created by Segard on 23/03/14.
//  Copyright (c) 2014 Segard. All rights reserved.
//

#import "ZXYTwiigLogin.h"
#import "ZXYTwiigMain.h"

@interface ZXYTwiigLogin()
@end

@implementation ZXYTwiigLogin

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   
    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"backgroundGradient1080p"]];
    self.view.backgroundColor = background;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (IBAction)login:(id)sender
{
    //Connect server et check infos
    //NSInteger result;
    //result = [self._db sendRequest: @"Blabla"];

    if (false)//Connection fail)
    {
        //UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"do_not_success_to_connect"]];
        
        //self.LabelError.backgroundColor = background;
        self.LabelError.text = @"Connexion échouée.";
    }
    else
    {
        if ([self.TextPseudo.text  isEqual: @"twiig_tester"])
        //if (true)
        {
            [self performSegueWithIdentifier:@"LoginSuccess" sender:self];
        }
        else
        {
            self.LabelError.text = @"Nom ou mot de passe incorrect.";
        }
    }
}


@end

