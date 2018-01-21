//
//  SubTableViewOne.m
//  TableViewAdapter
//
//  Created by dev4mobile on 2018/1/17.
//  Copyright © 2018年 dev4mobile. All rights reserved.
//

#import "SubTableViewOne.h"

@implementation SubTableViewOne

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = (CustomCell *)[super tableView:tableView cellForRowAtIndexPath:indexPath];
    cell.textLabel.text = [self getObject:indexPath];
    return  cell;
    
}

@end
