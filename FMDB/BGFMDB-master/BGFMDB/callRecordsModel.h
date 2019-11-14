//
//  callRecordsModel.h
//  CRM
//
//  Created by jinbo on 2019/10/17.
//  Copyright © 2019 smalltsky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BGFMDB.h"
NS_ASSUME_NONNULL_BEGIN

@interface callRecordsModel : NSObject
//拨打电话时间
@property (nonatomic, copy) NSString *calltime;
//拨打的电话
@property (nonatomic, copy) NSString *mobile;
//拨打电话的公司名称
@property (nonatomic, copy) NSString *name;
//拨打电话的公司的负责人
@property (nonatomic, copy) NSString *person;
//是否已设置标签 0未设置，1已设置
@property (nonatomic, copy) NSString *istag;

@end

NS_ASSUME_NONNULL_END
