//
//  Student.h
//  Day2HW
//
//  Created by John Tan on 5/7/15.
//  Copyright (c) 2015 John Tan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property NSString *name;
@property float grade;
@property float averageGrade;
@property float bonusGrade;
@property float pointsAwarded;
@property NSString *classGrading;
@property float deviation;
@property float averageDeviation;


-(float)calculateAverageGrade:(float)grade;
-(float)addBonusPoints:(float)grade;
-(NSString*)classGradingClassification:(float)averageGrade;
-(float)calculateDeviation:(float)averageGrade grade:(float)Grade;

@end
