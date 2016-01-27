//
//  ViewController.h
//  SnapGame
//
//  Created by Jason Williams on 2016-01-26.
//  Copyright © 2016 Screaming Goat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSTimer *timer;
    int timerInt;
    
    NSTimer *imageUpdate;
    int scoreInt;
    
}
@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *startOutlet;
@property (weak, nonatomic) IBOutlet UIButton *snapOutlet;

- (IBAction)startGame:(id)sender;
- (IBAction)snap:(id)sender;

@end

