//
//  Doctor.m
//  Patient & Doctor
//
//  Created by Cody Zazulak on 2015-07-02.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import "Doctor.h"
#import "Prescription.h"
#import "PrescriptionList.h"

@implementation Doctor

-(void) asksForHealthCard {
    NSLog(@"Hi, do you have a valid health card?");
}

-(void) prescribesMedication {
    NSLog(@"You get a prescription");
}

@end
