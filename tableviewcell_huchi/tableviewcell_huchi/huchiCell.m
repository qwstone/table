//
//  huchiCell.m
//  tableviewcell_huchi
//
//  Created by Carousel on 16/12/8.
//  Copyright © 2016年 Carousel. All rights reserved.
//

#import "huchiCell.h"

@implementation huchiCell


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        [self initViews];
    }
    return self;
}


-(void)initViews{
    
    self.btn = [UIButton buttonWithType:UIButtonTypeCustom];
    _btn.frame=CGRectMake(0, 0, 44, 44);
    [_btn addTarget:self action:@selector(selectBtn:) forControlEvents:UIControlEventTouchUpInside];
    _btn.backgroundColor = [UIColor greenColor];
    [self.contentView addSubview:_btn];
    
    
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(50, 0, 44, 44)];
    [self.contentView addSubview:_label];
}
-(void)updateData:(NSInteger)data
{
    if (self.btn.tag == data) {
        self.btn.backgroundColor = [UIColor redColor];
    }
    else
    {
        self.btn.backgroundColor = [UIColor whiteColor];
    }
    
}

-(void)selectBtn:(UIButton*)sender{
    
    self.callBack (sender.tag);
    
}






- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
