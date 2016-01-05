//
//  ViewController.m
//  Algorhythm
//
//  Created by Shan Rammah on 1/2/16.
//  Copyright © 2016 Shan Rammah. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Playlist *playlist = [[Playlist alloc] initWithIndex:0];
    // self.playlistImageView0.image = playlist.playlistIcon;
    
    for (NSUInteger index = 0; index < self.playlistImageviews.count; index ++) {
        //do something
        
        Playlist *playlist = [[Playlist alloc] initWithIndex:index];
        
        UIImageView *playlistImageView = self.playlistImageviews[index];
        
        playlistImageView.image = playlist.playlistIcon;
        playlistImageView.backgroundColor = playlist.backgroundColor;
        
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqual:@"showPlaylistDetail"]) {
        
        
        UIImageView *playlistImageView = (UIImageView *)[sender view];
        
        if ([self.playlistImageviews containsObject:playlistImageView]) {
            NSUInteger index = [self.playlistImageviews indexOfObject:playlistImageView];
        
        
        PlaylistDetailViewController *playlistDetailController = (PlaylistDetailViewController *)segue.destinationViewController;
        
        //playlistDetailController.playlist = [[Playlist alloc] initWithIndex:0];
            
            playlistDetailController.playlist = [[Playlist alloc] initWithIndex:index];

            
        }
        
    }
    
}

- (IBAction)showPlaylistDetail:(id)sender {
    
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
    
}



@end
