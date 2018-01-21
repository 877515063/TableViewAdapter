//
//  BaseTableView.m
//  TableViewAdapter
//
//  Created by dev4mobile on 2018/1/17.
//  Copyright © 2018年 dev4mobile. All rights reserved.
//

#import "BaseTableView.h"

@interface BaseTableView ()

@property(nonatomic,strong)NSMutableArray *datas;

@end

@implementation BaseTableView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.datas = [NSMutableArray array];
        self.delegate = self;
        self.dataSource = self;
        [self registerClass:[UITableViewCell class] forCellReuseIdentifier:@"iden"];
    }
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.datas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell= [tableView dequeueReusableCellWithIdentifier:@"iden"];
    cell.textLabel.text = self.datas[indexPath.row];
    return (CustomCell *)cell;
}

- (void)refreshData:(NSMutableArray *)mutableArray {
    if(!self.datas) {
        self.datas = mutableArray;
    }else {
        [self.datas removeAllObjects];
        [self.datas addObjectsFromArray:mutableArray];
    }
}

- (id)getObject:(NSIndexPath *)indexPath {
    return  [self.datas objectAtIndex:indexPath.row];
}

-(void)setMutableArray:(NSMutableArray *)mutableArray {
    if(!self.datas) {
        self.datas = mutableArray;
    }else {
        [self.datas removeAllObjects];
        [self.datas addObjectsFromArray:mutableArray];
    }
}

@end
