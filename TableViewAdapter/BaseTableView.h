//
//  BaseTableView.h
//  TableViewAdapter
//
//  Created by dev4mobile on 2018/1/17.
//  Copyright © 2018年 dev4mobile. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomCell.h"

@protocol BaseTableViewProtocol <UITableViewDelegate,UITableViewDataSource>

- (void)refreshData:(NSMutableArray *)mutableArray;

- (id)getObject:(NSIndexPath *)indexPath;

@end

@interface BaseTableView : UITableView <BaseTableViewProtocol>

@property(nonatomic,strong)NSMutableArray *mutableArray;

@end
