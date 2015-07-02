//
//  Doctor.h
//  Patient & Doctor
//
//  Created by Cody Zazulak on 2015-07-02.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Prescription.h"
#import "PrescriptionList.h"

@interface Doctor : NSObject

@property(nonatomic, strong) NSString *name;

@property(nonatomic, strong) NSString *specialty;

-(void) asksForHealthCard;

-(void) prescribesMedication;

@end
