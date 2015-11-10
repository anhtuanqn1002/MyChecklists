//
//  ViewController.m
//  MyChecklists
//
//  Created by Nguyen Van Anh Tuan on 11/10/15.
//  Copyright © 2015 Nguyen Van Anh Tuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//khởi tạo số dòng trong 1 section (mặc định số section hiện tại là 1)
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //tạo cell
    UITableViewCell *cell = nil;
    cell = [tableView dequeueReusableCellWithIdentifier:@"ChecklistItem"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ChecklistItem"];
    }
    cell.textLabel.text = @"Row 1";
    
    return cell;
}
@end
