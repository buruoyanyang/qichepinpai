//
//  carGroup.m
//  qichepinpai
//
//  Created by XiaoFeng on 16/1/18.
//  Copyright © 2016年 XiaoFeng. All rights reserved.
//

#import "carGroup.h"

@implementation carGroup

-(instancetype)initWithDic:(NSDictionary *)dic
{
    if(self = [super init])
    {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}
+(instancetype)carGroupWithDic:(NSDictionary *)dic
{
    return [[self alloc]initWithDic:dic];
}

+(NSArray *)carGruopList
{
    //加载plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"cars_simple" ofType:@"plist"];
    NSArray *dicArray = [NSArray arrayWithContentsOfFile:path];
    
    //字典转模型
    NSMutableArray *tempArray = [NSMutableArray array];
    for (NSDictionary *dic in dicArray) {
        carGroup *_carGroup = [carGroup carGroupWithDic:dic];
        [tempArray addObject:_carGroup];
    }
    return tempArray;
}


@end
