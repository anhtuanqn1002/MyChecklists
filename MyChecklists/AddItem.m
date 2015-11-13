//
//  AddItem.m
//  MyChecklists
//
//  Created by Nguyen Van Anh Tuan on 11/11/15.
//  Copyright © 2015 Nguyen Van Anh Tuan. All rights reserved.
//

#import "AddItem.h"
#import "ChecklistItem.h"

@implementation AddItem


- (IBAction)cancelButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)doneButton:(id)sender {
//    _itemSend.title =
    self.itemSend = [[ChecklistItem alloc] init];
    self.itemSend.title = self.titleTextField.text;
    self.itemSend.dueDate = self.dueDateTextField.text;
    self.itemSend.descriptionItem = self.descriptionTextField.text;
    
    [[self delegate] sentItem:self.itemSend];
    NSLog(@"%@ %@ %@", self.itemSend.title, self.itemSend.dueDate, self.itemSend.descriptionItem);
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
