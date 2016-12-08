//
//  huchiCell.h
//  tableviewcell_huchi
//
//  Created by Carousel on 16/12/8.
//  Copyright © 2016年 Carousel. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^callBack)(NSInteger index);




@interface huchiCell : UITableViewCell

@property (strong, nonatomic) UIButton * btn;
@property (strong, nonatomic) UILabel * label;
@property (nonatomic, copy) callBack callBack;

-(void)updateData:(NSInteger)data;
@end
