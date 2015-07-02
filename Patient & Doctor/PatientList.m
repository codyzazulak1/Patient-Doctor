//
//  PatientList.m
//  Patient & Doctor
//
//  Created by Cody Zazulak on 2015-07-02.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import "PatientList.h"

@implementation PatientList

-(instancetype) init{
    self = [super init];
    
    if (self){
        self.patients = [[NSArray alloc] init];
    }
    
    return self;
}

@end
