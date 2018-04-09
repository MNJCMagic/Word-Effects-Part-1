//
//  main.m
//  Word Effects Part 1
//
//  Created by Mike Cameron on 2018-04-09.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
        while (true) {
            
            //255 char long array of characters
            char inputChars[255];
            char num[255];
        
            printf("Input a string: ");
            //limit input to max 255
            fgets(inputChars, 255, stdin);
        
            // print as a c string
            printf("Your string is %s\n", inputChars);
        
            //convert char array to an NSString obj
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            //print NSString obj
            NSLog(@"Input was: %@", inputString);
            
            printf("Input a number between 1 and 6, inclusive: ");
            fgets(num, 255, stdin);
            
            NSString *inputNum = [NSString stringWithUTF8String:num];

            NSLog(@"You chose number: %@\n", inputNum);
            
            int choice = [inputNum intValue];
            
            // make new string with carriage return snipped off
            NSUInteger strLast = [inputString length] - 1;
            NSRange range = NSMakeRange(0, strLast);
            NSString *newInputString = [inputString substringWithRange:range];
            
            
            
            //perform operations
            switch (choice) {
                case 1: {
                    NSLog(@"New text is: %@\n", [newInputString uppercaseString]);
                }
                    break;
                case 2: {
                    NSLog(@"New text is: %@\n", [newInputString lowercaseString]);
                }
                    break;
                case 3: {
                    NSLog(@"Your text as an integer is: %ld\n", (long)[newInputString integerValue]);
                }
                    break;
                case 4: {
                    NSString *eh = @", eh?";
                    NSString *canadianString = [newInputString stringByAppendingString:eh];
                    NSLog(@"New text is: %@\n", canadianString);
                }
                    break;
                case 5: {
                    if ([newInputString hasSuffix:@"?"]) {
                        NSLog(@"I don't know");
                    } else if ([newInputString hasSuffix:@"!"]) {
                        NSLog(@"Whoa, calm down!");
                    } else {
                        NSLog(@"Thanks");
                    }
                   
                }
                    break;
                case 6: {
                    NSString *dashString = [newInputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                    NSLog(@"New text is: %@", dashString);
                }
                    
                    
                default:
                    break;
            }
            
            
            
            
        
        }
        
    }
    return 0;
}
