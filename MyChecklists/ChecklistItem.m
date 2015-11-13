//
//  ChecklistItem.m
//  MyChecklists
//
//  Created by Nguyen Van Anh Tuan on 11/10/15.
//  Copyright © 2015 Nguyen Van Anh Tuan. All rights reserved.
//

#import "ChecklistItem.h"

@implementation ChecklistItem

-(void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.title forKey:@"Title"];
    [aCoder encodeObject:self.dueDate forKey:@"DueDate"];
    [aCoder encodeObject:self.descriptionItem forKey:@"Description"];
}

-(id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super init])) {
        self.title = [aDecoder decodeObjectForKey:@"Title"];
        self.dueDate = [aDecoder decodeObjectForKey:@"DueDate"];
        self.descriptionItem = [aDecoder decodeObjectForKey:@"Description"];
    }
    return self;
}
@end
