//
//  BaseViewController.m
//  TableViewAdapter
//
//  Created by dev4mobile on 2018/1/17.
//  Copyright © 2018年 dev4mobile. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (id<BaseTableViewProtocol>)getTableView {
    return nil;
}


@end
