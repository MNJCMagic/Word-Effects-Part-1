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
        
        printf("Input a string: ");
        //limit input to max 255
        fgets(inputChars, 255, stdin);
        
        // print as a c string
        printf("Your string is %s\n", inputChars);
        
        //convert char array to an NSString obj
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        //print NSString obj
        NSLog(@"Input was: %@", inputString);
        
        }
        
    }
    return 0;
}
