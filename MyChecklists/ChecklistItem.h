//
//  ChecklistItem.h
//  MyChecklists
//
//  Created by Nguyen Van Anh Tuan on 11/10/15.
//  Copyright © 2015 Nguyen Van Anh Tuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChecklistItem : NSObject <NSCoding>

@property (nonatomic, strong) NSString *title;
@property (nonatomic, copy) NSString *dueDate;
@property (nonatomic, copy) NSString *descriptionItem;

@end
