//
//  PlaylistDetailViewController.m
//  Algorhythm
//
//  Created by Shan Rammah on 1/2/16.
//  Copyright © 2016 Shan Rammah. All rights reserved.
//

#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistDetailViewController ()

@end

@implementation PlaylistDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if (self.playlist) {
        self.playlistCoverImage.image = self.playlist.playlistIconLarge;
        self.playlistCoverImage.backgroundColor = self.playlist.backgroundColor;
        self.playlistTitle.text = self.playlist.playlistTitle;
        self.playlistDescription.text = self.playlist.playlistDescription;
        
        self.playlistArtist0.text = self.playlist.playlistArtists[0];
        self.playlistArtist1.text = self.playlist.playlistArtists[1];
        self.playlistArtist2.text = self.playlist.playlistArtists[2];

    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
