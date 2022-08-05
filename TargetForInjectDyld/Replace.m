//
//  Replace.m
//  TargetForInjectDyld
//
//  Created by Dio Brand on 2022/8/6.
//

#import "Replace.h"

@implementation Replace

-(NSString *)replaceFunc1:(NSString *)param1 {
    NSString *ret = [NSString stringWithFormat:@"%@ --- replace from replaceFunc1",param1];
    return ret;
}

@end
