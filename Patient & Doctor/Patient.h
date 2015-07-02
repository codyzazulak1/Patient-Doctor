//
//  Patient.h
//  Patient & Doctor
//
//  Created by Cody Zazulak on 2015-07-02.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property(nonatomic, strong) NSString *name;

@property(nonatomic, assign) int age;

@property(nonatomic, assign) bool validHealthCard;

@property(nonatomic, strong) NSString *symptom;

-(void) requestMedication;

-(void) respondToHealthCardRequest;

@end
