//
//  carGroup.h
//  qichepinpai
//
//  Created by XiaoFeng on 16/1/18.
//  Copyright © 2016年 XiaoFeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface carGroup : NSObject
@property(nonatomic,copy) NSString *title;
@property(nonatomic,copy) NSString *desc;
@property(nonatomic,strong) NSArray *cars;


-(instancetype)initWithDic:(NSDictionary *)dic;
+(instancetype)carGroupWithDic:(NSDictionary *)dic;

+(NSArray *)carGruopList;
@end
