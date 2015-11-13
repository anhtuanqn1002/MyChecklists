//
//  ViewController.m
//  MyChecklists
//
//  Created by Nguyen Van Anh Tuan on 11/10/15.
//  Copyright © 2015 Nguyen Van Anh Tuan. All rights reserved.
//

#import "ViewController.h"
#import "ChecklistItem.h"
#import "AddItem.h"
@interface ViewController ()
{
    ChecklistItem *_itemRec;
}
@end

@implementation ViewController

- (void)createData {
    // Do any additional setup after loading the view, typically from a nib.
    
    ChecklistItem *item = [[ChecklistItem alloc] init];
    item.title = @"A";
    item.dueDate = @"11/10/2015";
    item.descriptionItem = @"descriptionItem1";
    
    [self.listItem addObject:item];
    
    ChecklistItem *item2 = [[ChecklistItem alloc] init];
    item2.title = @"B";
    item2.dueDate = @"22/10/2015";
    item2.descriptionItem = @"descriptionItem2";
    
    [self.listItem addObject:item2];
    
    ChecklistItem *item3 = [[ChecklistItem alloc] init];
    item3.title = @"C";
    item3.dueDate = @"30/10/2015";
    item3.descriptionItem = @"descriptionItem3";
    
    [self.listItem addObject:item3];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.listItem = [[NSMutableArray alloc] init];
    [self createData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//khởi tạo số dòng trong 1 section (mặc định số section hiện tại là 1)
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.listItem count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //tạo cell
    UITableViewCell *cell = nil;
    cell = [tableView dequeueReusableCellWithIdentifier:@"ChecklistItem"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ChecklistItem"];
    }
    ChecklistItem *checklist = [self.listItem objectAtIndex:indexPath.row];
    
    cell.textLabel.text = checklist.title;
    cell.detailTextLabel.text = checklist.dueDate;
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"AddItem"]) {
        UINavigationController *navController = segue.destinationViewController;
        AddItem *controller = (AddItem *)navController.topViewController;
        controller.delegate = self;
    }
}

//delegate method

-(void)sentItem:(ChecklistItem *)itemSend {
    _itemRec = itemSend;
    NSLog(@"%@ %@ %@", _itemRec.title, _itemRec.dueDate, _itemRec.descriptionItem);
}

@end
