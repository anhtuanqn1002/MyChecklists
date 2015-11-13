//
//  ViewController.h
//  MyChecklists
//
//  Created by Nguyen Van Anh Tuan on 11/10/15.
//  Copyright © 2015 Nguyen Van Anh Tuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddItem.h"

@interface ViewController : UITableViewController <UITableViewDataSource, AddItemDelegate>

@property (nonatomic, strong) NSMutableArray *listItem;

@end

