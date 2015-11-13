//
//  AddItem.h
//  MyChecklists
//
//  Created by Nguyen Van Anh Tuan on 11/11/15.
//  Copyright © 2015 Nguyen Van Anh Tuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ChecklistItem;

@protocol AddItemDelegate <NSObject>

-(void)sentItem:(ChecklistItem *)itemSend;

@end

@interface AddItem : UITableViewController <UITextFieldDelegate>

@property (nonatomic, assign) id<AddItemDelegate> delegate;
@property (nonatomic, weak) ChecklistItem *itemSend;

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *dueDateTextField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextField;


@end
