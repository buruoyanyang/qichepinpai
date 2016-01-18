//
//  ViewController.m
//  qichepinpai
//
//  Created by XiaoFeng on 16/1/18.
//  Copyright © 2016年 XiaoFeng. All rights reserved.
//

#import "ViewController.h"
#import "carGroup.h"
@interface ViewController () <UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong)NSArray *carGroups;

@end

@implementation ViewController


-(BOOL)prefersStatusBarHidden
{
    return YES;
}
//懒加载
-(NSArray *)carGroups
{
    if (_carGroups == nil) {
        _carGroups = [carGroup carGruopList];
    }
    return _carGroups;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //设置数据源
    self.tableView.dataSource = self;
}


//实现数据源的方法
#pragma mark 
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.carGroups.count;
}

//返回每组的数据量
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    carGroup *cars = self.carGroups[section];
    return cars.cars.count;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    
    carGroup *cars = self.carGroups[indexPath.section];
    cell.textLabel.text =cars.cars[indexPath.row];
    return cell;
}
//分组信息
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    carGroup *cars = self.carGroups[section];
    return cars.title;
}

//-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
//{
//    carGroup *cars = self.carGroups[section];
//    return cars.desc;
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
