//
//  CHMenuViewController.m
//  CHCloudHealth
//
//  Created by __无邪_ on 4/1/16.
//  Copyright © 2016 fqah. All rights reserved.
//

#import "CHMenuViewController.h"

@interface CHMenuViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) UIView *tableHeaderView;
@property (strong, nonatomic) NSMutableArray *datas;
@end

@implementation CHMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.datas = [[NSMutableArray alloc] init];
    //self.tableView.tableHeaderView = self.tableHeaderView;
    [self.view setBackgroundColor:[UIColor defaultColor]];
    [self.tableView blankTableFooterView];
    [self.tableView setBackgroundColor:[UIColor defaultColor]];
    // section first
   [self.datas addObject:@[@{@"title":@"设置",@"image":@"ios_icon_18"}]];
    // section second
    [self.datas addObject:@[
                            @{@"title":@"基础信息",@"identifier":@"CHUserInfoController"},
                            @{@"title":@"亲情号码",@"identifier":@"CHAddRelationNumController"},
//                            @{@"title":@"监护区域",@"identifier":@"CHMonitorCareController"},
                            @{@"title":@"位置监测",@"identifier":@"CHLocationMonitorController"},
                            @{@"title":@"心率检测",@"identifier":@"CHMonitorCareController"},
                            @{@"title":@"血糖检测",@"identifier":@"CHMonitorCareController"},
                            @{@"title":@"血压检测",@"identifier":@"CHMonitorCareController"},
                            @{@"title":@"服药提醒",@"identifier":@"CHMedicineReminderController"},
//                            @{@"title":@"紧急求助",@"identifier":@"CHSOSSetController"},
                            @{@"title":@"设备管理",@"identifier":@"CHDeviceManagerController"},
                            @{@"title":@"切换用户"}
                            ]];
    // section third
//    [self.datas addObject:@[@{@"title":@"APP管理"}]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Delegate


#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    [cell setSelected:NO];
    
    
    if (indexPath.section == 1) {
        
        SWRevealViewController *revealController = self.revealViewController;
        [revealController revealToggleAnimated:YES];
        
        
        NSString *identifier = self.datas[indexPath.section][indexPath.row][@"identifier"];
        
        if (!identifier) {
            identifier = @"切换用户";
        }
        
        if ([identifier isEqualToString:@"CHMonitorCareController"]) {
            NSDictionary *info = @{@"identifier":identifier,@"type":@(indexPath.row)};
            
            [[NSNotificationCenter defaultCenter] postNotificationName:kNotificationMenuController object:info];
        }else{
            NSDictionary *info = @{@"identifier":identifier};
            
            [[NSNotificationCenter defaultCenter] postNotificationName:kNotificationMenuController object:info];
            
        }
    }
    
}
//- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
//    if (section == 1) {
//        return 64;
//    }
//    return 0;
//}
//- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
//    if (section == 1) {
//        UIView *titleView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kMainWidth, 64)];
//        titleView.backgroundColor = [UIColor greenColor];
//        return titleView;
//    }
//    return nil;
//}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.datas.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[self.datas objectAtIndex:section] count];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return 100;
    }
    return 44;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        static NSString *identifierMenuHeader = @"IdentifierMenuHeader";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifierMenuHeader forIndexPath:indexPath];
        return cell;
    }
    static NSString *identifierCell = @"IdentifierMenu";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifierCell forIndexPath:indexPath];
    [self configureCell:cell atIndexPath:indexPath];
    
    return cell;
}

#pragma mark - configure

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    NSArray *data = [self.datas objectAtIndex:indexPath.section];
    NSString *title = [data objectAtIndex:indexPath.row][@"title"];
    [cell.textLabel setTextColor:[UIColor whiteColor]];
    [cell.textLabel setText:title];
}


//- (UIView *)tableHeaderView{
//    if (!_tableHeaderView) {
//        _tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kMainWidth - 120, 200)];
//        _tableHeaderView.backgroundColor = [UIColor cyanColor];
//    }
//    return _tableHeaderView;
//}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
