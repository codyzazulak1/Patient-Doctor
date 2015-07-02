//
//  Patient.m
//  Patient & Doctor
//
//  Created by Cody Zazulak on 2015-07-02.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(void) requestMedication {
    NSLog(@"Can I have medication for my %@?", self.symptom);
}

-(void) respondToHealthCardRequest {
    if (self.validHealthCard) {
        NSLog(@"Yes, here it is");
    } else {
        NSLog(@"No, sorry");
    }
}

@end
