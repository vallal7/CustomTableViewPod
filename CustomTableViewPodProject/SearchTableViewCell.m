//
//  SearchTableViewCell.m
//  MusicSearch
//
//  Created by Ganesh, Ashwin on 3/25/17.
//  Copyright © 2017 Ashwin. All rights reserved.
//

#import "SearchTableViewCell.h"

@implementation SearchTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        // Helpers
        CGSize size = self.contentView.frame.size;
        
        // Initialize Main Label and Configure Album Name Label
        self.albumName = [[UILabel alloc] initWithFrame:CGRectMake(78.0, 12.0, size.width - 76.0, 20)];
        [self.albumName setFont:[UIFont boldSystemFontOfSize:15.0]];
        [self.albumName setTextAlignment:NSTextAlignmentLeft];
        [self.albumName setTextColor:[UIColor blackColor]];
        [self.albumName setAutoresizingMask:(UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight)];
        [self.albumName setText:@"Album Name"];
        
        // Initialize Main Label and Configure Track Name Label
        self.trackName = [[UILabel alloc] initWithFrame:CGRectMake(78, -10, size.width - 76.0, 20)];
        [self.trackName setFont:[UIFont boldSystemFontOfSize:17.0]];
        [self.trackName setTextAlignment:NSTextAlignmentLeft];
        [self.trackName setTextColor:[UIColor blackColor]];
        [self.trackName setAutoresizingMask:(UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight)];
        [self.trackName setText:@"Track Name"];
        
        // Initialize Main Label and Configure Artist Name Label
        self.artistName = [[UILabel alloc] initWithFrame:CGRectMake(78, 34, size.width - 76.0, 20)];
        [self.artistName setFont:[UIFont boldSystemFontOfSize:16.0]];
        [self.artistName setTextAlignment:NSTextAlignmentLeft];
        [self.artistName setTextColor:[UIColor blackColor]];
        [self.artistName setAutoresizingMask:(UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight)];
        [self.artistName setText:@"Artist Name"];
        
        // Initialize Main Label and Configure Artist Name Label
        self.albumImage = [[UIImageView alloc] initWithFrame:CGRectMake(8, 13, 55, 55)];
        
        // Add all labels to Content View
        [self.contentView addSubview:self.albumName];
        [self.contentView addSubview:self.trackName];
        [self.contentView addSubview:self.artistName];
        [self.contentView addSubview:self.albumImage];
    }
    
    return self;
}

@end
