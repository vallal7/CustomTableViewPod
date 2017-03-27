//
//  TableViewDataSource.h
//  MusicSearch
//
//  Created by Arthi palaniapan on 3/26/17.
//  Copyright © 2017 Ashwin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SearchTableViewCell.h"
#import <UIKit/UIKit.h>
@interface TableViewDataSource : NSObject<UITableViewDataSource>

@property(assign) int numberOfRows;

@property(assign) NSInteger *numberOfSections;
@property (nonatomic, retain) NSMutableArray *dataArray;
@property (nonatomic, weak)UITableView *tableView;

-(instancetype)initWithTableView:(UITableView *)tableView;

-(void)reloadTableDataWithContent:(NSMutableArray *)array;

@end

/*
@interface TableViewDelegate : NSObject<UITableViewDelegate>

@end
*/
