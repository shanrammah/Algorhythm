//
//  ViewController.h
//  Algorhythm
//
//  Created by Shan Rammah on 1/2/16.
//  Copyright © 2016 Shan Rammah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlaylistMasterViewController : UIViewController

// @property (weak, nonatomic) IBOutlet UIImageView *playlistImageView0;

@property (strong, nonatomic) IBOutletCollection (UIImageView) NSArray *playlistImageviews;

@end

