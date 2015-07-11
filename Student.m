//
//  Student.m
//  Day2HW
//
//  Created by John Tan on 5/7/15.
//  Copyright (c) 2015 John Tan. All rights reserved.
//

#import "Student.h"

@implementation Student

-(float)calculateAverageGrade:(float)grade{
    
    float averageGrade = grade;
// float averageGrade = (self.studentOne.grade + self.studentTwo.grade + self.studentThree.grade + self.studentFour.grade + self.studentFive.grade + self.studentSix.grade + self.studentSeven.grade + self.studentEight.grade + self.studentNine.grade + self.studentTen.grade)/[students count];
    
return averageGrade;
}


-(float)addBonusPoints:(float)grade {
    self.pointsAwarded = 5;
    float bonusGrade = grade + self.pointsAwarded;
    return bonusGrade;
}

-(NSString*)classGradingClassification:(float)averageGrade {
    NSString *classGrading;
    if (averageGrade >= 70) {
        self.classGrading = @"Excellent";
    }
    else if (averageGrade >=60 && averageGrade <70) {
        self.classGrading = @"Good";
    }
    else {
        self.classGrading = @"Average";
    }
    classGrading = self.classGrading;
    return classGrading;
}

-(float)calculateDeviation:(float)averageGrade grade:(float)Grade {
    float deviation;
    self.deviation = Grade - averageGrade;
    deviation = self.deviation;
    return deviation;
}

@end
