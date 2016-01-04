//
//  ZYTreeViewController.h
//  ZYTreeView
//
//  Created by yi on 15-12-27.
//  Copyright (c) yi. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ZYTreeViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (strong,nonatomic) UITableView* myTableView;

@end
