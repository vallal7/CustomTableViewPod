//
//  SearchTableViewCell.h
//  MusicSearch
//
//  Created by Ganesh, Ashwin on 3/25/17.
//  Copyright © 2017 Ashwin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchTableViewCell : UITableViewCell

@property (nonatomic, strong) UILabel *trackName;
@property (nonatomic, strong) UILabel *artistName;
@property (nonatomic, strong) UILabel *albumName;
@property (nonatomic, strong) UIImageView *albumImage;

@end
