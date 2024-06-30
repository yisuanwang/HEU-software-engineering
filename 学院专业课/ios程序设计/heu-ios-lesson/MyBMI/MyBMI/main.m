//
//  main.m
//  MyBMI
//
//  Created by 乙酸王 on 2023/6/2.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Declare variables
        float weight; // Weight in kilograms or pounds
        float height; // Height in meters or inches
        float bmi; // Body mass index
        
        // Ask for user input
        NSLog(@"Enter your weight (kg):");
        scanf("%f", &weight);
        NSLog(@"Enter your height (m):");
        scanf("%f", &height);
        
        printf("%f",weight);
        printf("%f",height);
        
        // Calculate BMI
        if (height > 3) { // Assume height is in inches
            bmi = weight / (height * height) * 703; // Use the formula for imperial units
        } else { // Assume height is in meters
            bmi = weight / (height * height); // Use the formula for metric units
        }
        
        // Display BMI and category
        NSLog(@"Your BMI is %.2f", bmi);
        if (bmi < 18.5) {
            NSLog(@"You are underweight.");
        } else if (bmi >= 18.5 && bmi < 25) {
            NSLog(@"You have a normal weight.");
        } else if (bmi >= 25 && bmi < 30) {
            NSLog(@"You are overweight.");
        } else {
            NSLog(@"You are obese.");
        }
    }
    return 0;
}
