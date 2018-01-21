//
//  BaseViewController.h
//  TableViewAdapter
//
//  Created by dev4mobile on 2018/1/17.
//  Copyright © 2018年 dev4mobile. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseTableView.h"

@interface BaseViewController : UIViewController

- (id<BaseTableViewProtocol>)getTableView;

@end
