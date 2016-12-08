//
//  ViewController.m
//  tableviewcell_huchi
//
//  Created by czg on 16/12/8.
//  Copyright © 2016年 Carousel. All rights reserved.
//

#import "ViewController.h"
#import "huchiCell.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (strong ,nonatomic) UITableView  * tableview;

@property (strong, nonatomic) UIButton * lasSelectBtn;
@property (nonatomic, assign) NSInteger  previousSelectIndex;
@property (nonatomic, assign) NSInteger currentSelectIndex;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, 414, 300)];
    _tableview.delegate = self;
    _tableview.dataSource = self;
    [self.view addSubview:_tableview];

}




-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString * IdentifierStr =@"huchicell";
    huchiCell * cell = [tableView dequeueReusableCellWithIdentifier:IdentifierStr];
    if (cell == nil) {
        cell = [[huchiCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:IdentifierStr];
    }
    cell.label.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    cell.btn.tag =  indexPath.row;
    
    cell.callBack = ^(NSInteger a){
        
        _previousSelectIndex = _currentSelectIndex;
        _currentSelectIndex = a;
        
        NSIndexPath* pr = [NSIndexPath indexPathForRow:_previousSelectIndex inSection:0] ;
        NSIndexPath* cu = [NSIndexPath indexPathForRow:_currentSelectIndex inSection:0] ;
        [_tableview reloadRowsAtIndexPaths: @ [pr,cu] withRowAnimation:UITableViewRowAnimationFade];
    };
    [cell updateData:_currentSelectIndex];

    
    return cell;
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
