//
//  ViewController.h
//  Milstone4
//
//  Created by Abbi H Safaie on 27/03/2014.
//  Copyright (c) 2014 Abbas H Safaie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"
@class DetailViewController;

@interface ViewController : UIViewController
<UITableViewDataSource, DetailViewControllerDelegate>



@property DetailViewController *detailViewController;
@property NSMutableArray*elements;
@property DirectoryEntry* entry;
@property UITableView * myTableView;

@end
