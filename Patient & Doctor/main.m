//
//  main.m
//  Patient & Doctor
//
//  Created by Cody Zazulak on 2015-07-02.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
#import "PatientList.h"
#import "Prescription.h"
#import "PrescriptionList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
        Doctor *mainDoctor = [[Doctor alloc] init];
        [mainDoctor setName:@"John"];
        [mainDoctor setSpecialty:@"Chief"];
        
        
        
        Patient *patient1 = [[Patient alloc] init];
        [patient1 setName:@"Steve"];
        [patient1 setSymptom:@"Cough"];
        [patient1 setAge:20];
        [patient1 setValidHealthCard:true];

        Patient *patient2 = [[Patient alloc] init];
        [patient2 setName:@"Dave"];
        [patient2 setSymptom:@"Dehydration"];
        [patient2 setAge:30];
        [patient2 setValidHealthCard:false];
        
        Patient *patient3 = [[Patient alloc] init];
        [patient3 setName:@"Jeff"];
        [patient3 setSymptom:@"Headache"];
        [patient3 setAge:40];
        [patient3 setValidHealthCard:true];
        
        
        
        Prescription *prescription1 = [[Prescription alloc] init];
        [prescription1 setName:@"Cough Syrup"];
        [prescription1 setWhatItCures:@"Cough"];
        
        Prescription *prescription2 = [[Prescription alloc] init];
        [prescription2 setName:@"Water"];
        [prescription2 setWhatItCures:@"Dehydration"];
        
        Prescription *prescription3 = [[Prescription alloc] init];
        [prescription3 setName:@"Advil"];
        [prescription3 setWhatItCures:@"Headache"];
        
        
        
        PatientList *todaysPatients = [[PatientList alloc] init];
        todaysPatients.patients = @[patient1, patient2, patient3];
        
        PrescriptionList *usablePrescriptions = [[PrescriptionList alloc] init];
        usablePrescriptions.prescriptions = @[prescription1, prescription2, prescription3];
        
        
        
        for(Patient *patient in todaysPatients.patients) {
            [mainDoctor asksForHealthCard];
            [patient respondToHealthCardRequest];
            if (patient.validHealthCard) {
                [mainDoctor prescribesMedication];
                for(Prescription *prescription in usablePrescriptions.prescriptions) {
                    if (patient.symptom ==  prescription.whatItCures) {
                        NSLog(@"Prescription given %@", prescription.name);
                    }
                }
            } else {
                NSLog(@"You must leave");
            }
            NSLog(@"=========");
        }
        
        
    }
    return 0;
}
