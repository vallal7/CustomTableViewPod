//
//  TableViewDataSource.m
//  MusicSearch
//
//  Created by Arthi palaniapan on 3/26/17.
//  Copyright © 2017 Ashwin. All rights reserved.
//

#import "TableViewDataSource.h"
#import "TrackModel.h"
static NSString *CellIdentifier = @"CellIdentifier";

@implementation TableViewDataSource

-(instancetype)initWithTableView:(UITableView *)tableView{
   self = [super init];
    _tableView = tableView;
    return self;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if ([self.dataArray count] > 0)
    {
        tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
        tableView.backgroundView = nil;
    }
    else
    {
        UILabel *noDataLabel         = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, tableView.bounds.size.width, tableView.bounds.size.height)];
        noDataLabel.text             = @"Kindly enter valid data";
        noDataLabel.textColor        = [UIColor blackColor];
        noDataLabel.textAlignment    = NSTextAlignmentCenter;
        tableView.backgroundView = noDataLabel;
        tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return [self.dataArray count];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.numberOfSections;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SearchTableViewCell *cell = (SearchTableViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    TrackModel *track = [self.dataArray objectAtIndex:(long)[indexPath row]];
    // to do
    //change label to label name
    cell.trackName.text = track.trackName;
    cell.albumName.text = track.albumName;
    cell.artistName.text = track.artistName;
    
    if (track.albumImage) {
        cell.albumImage.image = track.albumImage;
    } else {
        // set default user image while image is being downloaded
        cell.albumImage.image = [UIImage imageNamed:@""];
        
        // download the image asynchronously
        NSURL *url = [NSURL URLWithString:track.albumImageName];
        NSURLSession *session = [NSURLSession sharedSession];
        NSURLSessionDownloadTask *task = [session downloadTaskWithURL:url
                                                    completionHandler:^(NSURL *location,NSURLResponse *response, NSError *error) {
                                                        NSData *imageData = [NSData dataWithContentsOfURL:location];
                                                        track.albumImage = [UIImage imageWithData:imageData];
                                                        dispatch_async(dispatch_get_main_queue(), ^{
                                                            cell.albumImage.image = track.albumImage;
                                                        });
                                                    }];
        [task resume];
        
    }
    
    return cell;
}

-(void)reloadTableDataWithContent:(NSMutableArray *)array{
    self.dataArray = array;
    [self.tableView reloadData];
    [self.tableView setContentOffset:CGPointZero animated:NO];
}
@end
/*
@implementation TableViewDelegate

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80.0;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
}

@end
*/
