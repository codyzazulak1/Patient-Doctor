//
//  PrescriptionList.m
//  Patient & Doctor
//
//  Created by Cody Zazulak on 2015-07-02.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import "PrescriptionList.h"

@implementation PrescriptionList

-(instancetype) init{
    self = [super init];
    
    if (self){
        self.prescriptions = [[NSArray alloc] init];
    }
    
    return self;
}

@end
