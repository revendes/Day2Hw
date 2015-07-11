//
//  main.m
//  Day2HW
//
//  Created by John Tan on 5/7/15.
//  Copyright (c) 2015 John Tan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "ArtsStudents.h"
#import "ScienceStudents.h"

int main(int argc, const char * argv[]) {
    //@autoreleasepool {
        Student *studentOne = [[Student alloc] init];
        studentOne.name = @"studentOne";
        studentOne.grade = 95;
        studentOne.deviation = 0;
       
        Student *studentTwo = [[Student alloc] init];
        studentTwo.name = @"studentTwo";
        studentTwo.grade = 90;
        studentTwo.deviation = 0;
        
        Student *studentThree = [[Student alloc] init];
        studentThree.name = @"studentThree";
        studentThree.grade = 85;
        studentThree.deviation = 0;
        
        Student *studentFour = [[Student alloc] init];
        studentFour.name = @"studentFour";
        studentFour.grade = 80;
        studentFour.deviation = 0;
        
        Student *studentFive = [[Student alloc] init];
        studentFive.name = @"studentFive";
        studentFive.grade = 75;
        studentFive.deviation = 0;
        
        Student *studentSix = [[Student alloc] init];
        studentSix.name = @"studentSix";
        studentSix.grade = 70;
        studentSix.deviation = 0;
        
        Student *studentSeven = [[Student alloc] init];
        studentSeven.name = @"studentSeven";
        studentSeven.grade = 65;
        studentSeven.deviation = 0;
        
        Student *studentEight = [[Student alloc] init];
        studentEight.name = @"studentEight";
        studentEight.grade = 60;
        studentEight.deviation = 0;
        
        Student *studentNine = [[Student alloc] init];
        studentNine.name = @"studentNine";
        studentNine.grade = 55;
        studentNine.deviation = 0;
        
        Student *studentTen = [[Student alloc] init];
        studentTen.name = @"studentTen";
        studentTen.grade = 50;
        studentTen.deviation = 0;
    
        ArtsStudents *studentEleven = [[ArtsStudents alloc] init];
        ArtsStudents *studentTwelve = [[ArtsStudents alloc] init];
        ArtsStudents *studentThirteen = [[ArtsStudents alloc] init];
        ArtsStudents *studentFourteen = [[ArtsStudents alloc] init];
        ArtsStudents *studentFiveteen = [[ArtsStudents alloc] init];
    
        ScienceStudents *studentSixteen = [[ScienceStudents alloc] init];
        ScienceStudents *studentSeventeen = [[ScienceStudents alloc] init];
        ScienceStudents *studentEighteen = [[ScienceStudents alloc] init];
        ScienceStudents *studentNineteen = [[ScienceStudents alloc] init];
        ScienceStudents *studentTwenty = [[ScienceStudents alloc] init];
    
    float i=0;
    float sumOfNumbers = 0;
    
        
        NSArray *students = @[studentOne, studentTwo, studentThree, studentFour, studentFive, studentSix, studentSeven, studentEight, studentNine, studentTen];
        
        for (Student *eachStudents in students) {
            eachStudents.grade =[eachStudents addBonusPoints: eachStudents.grade];
            NSLog(@"The new grade for %@ is %.2f\n",eachStudents.name, eachStudents.grade);
            
        }
            
        
        float averageGrade = (studentOne.grade + studentTwo.grade + studentThree.grade + studentFour.grade + studentFive.grade + studentSix.grade + studentSeven.grade + studentEight.grade + studentNine.grade + studentTen.grade)/[students count];
        
       NSLog(@"The average grade for a class size of %ld students is %.2f\n", [students count], averageGrade );
    
    for (Student *eachStudents in students) {
        eachStudents.deviation = [eachStudents calculateDeviation : averageGrade grade:eachStudents.grade];
        NSLog(@"The deviation for %@ is %.2f\n",eachStudents.name, eachStudents.deviation);
        
    }
    
    float averageDeviation = (studentOne.deviation + studentTwo.deviation + studentThree.deviation + studentFour.deviation + studentFive.deviation + studentSix.deviation + studentSeven.deviation + studentEight.deviation + studentNine.deviation + studentTen.deviation)/[students count];
        
     NSLog(@"The average deviation for a class size of %ld students is %.2f\n", [students count], averageDeviation );
    
    
       NSString *classGrading = [studentOne classGradingClassification: averageGrade];
    
       NSLog(@"The class grading for the class is %@\n", classGrading);
    
    for (i=1; i<=100; i++) {
        sumOfNumbers = sumOfNumbers + i;
    }
        NSLog(@"The sum of 1 to 100 is %.2f\n", sumOfNumbers);
        
    
}





