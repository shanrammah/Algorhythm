//
//  MusicLibrary.h
//  Algorhythm
//
//  Created by Shan Rammah on 1/3/16.
//  Copyright © 2016 Shan Rammah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Playlist.h"


extern NSString *const kTitle;
extern NSString *const kDescription;
extern NSString *const kIcon;
extern NSString *const kLargeIcon;
extern NSString *const kBackgroundColor;
extern NSString *const kArtists;

@interface MusicLibrary : NSObject

@property (strong, nonatomic) NSArray *library; 

@end
