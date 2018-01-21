//
//  ViewController.m
//  TableViewAdapter
//
//  Created by dev4mobile on 2018/1/17.
//  Copyright © 2018年 dev4mobile. All rights reserved.
//

#import "ViewController.h"
#import "SubTableViewOne.h"
#import <objc/message.h>
@interface ViewController (){
     SubTableViewOne *_subTableView;
}

@property(nonatomic,strong)NSMutableArray *array;

@end

@implementation ViewController

- (void)viewDidLoad {
    NSProxy
    [super viewDidLoad];
//  tableView = [[BaseTableView alloc] initWithFrame:self.view.frame];
//  tableView.mutableArray = self.array;
    
    self.array = [NSMutableArray arrayWithObjects:@"xxx",@"yyy",nil];
    [self.getTableView refreshData:self.array];
    [self.view addSubview:(id)self.getTableView];
    
    [UINavigationBar appearance].backgroundColor = [UIColor redColor];
}


- (id<BaseTableViewProtocol>)getTableView {
    if (_subTableView==nil) {
         _subTableView = [[SubTableViewOne alloc] initWithFrame:self.view.frame];
    }
    return _subTableView;
}


+ (BOOL)isNullToDictionary:(NSDictionary *)dict {
    if (dict && [dict isKindOfClass:[NSNull class]] && dict.count != 0) {
        return YES;
    }
    return YES;
}

+ (NSString *)stringWithData:(id)data {
    if (data && [data isKindOfClass:[NSNull class]]) {
        return [NSString stringWithFormat:@"%@",data];
    }
    return @"";
}

//NSDictionary *dic  = nil;
//Class test = Nil;
//int *p = NULL;
//id str = [dic objectForKey:@"body"];
//NSLog(@"str = %@",str);


@end
