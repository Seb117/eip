//
//  ZXYTwiigViewController.h
//  Twiig
//
//  Created by Segard on 23/03/14.
//  Copyright (c) 2014 Segard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZXYTwiigLogin : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *TextPseudo;
@property (weak, nonatomic) IBOutlet UITextField *TextPassword;
@property (weak, nonatomic) IBOutlet UIButton *ButtonLogin;
@property (weak, nonatomic) IBOutlet UILabel *LabelError;
@property (weak, nonatomic) IBOutlet UIImageView *Logo;


@end