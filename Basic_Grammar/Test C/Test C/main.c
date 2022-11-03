//
//  main.c
//  Test C
//
//  Created by 이희웅 on 2022/11/04.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    // CH01 1장의 TypeSafety 비교
    float a = 3.14159;
    double b = 3.1414922342345665;
    int c = 123123;
    char d = 'A';
    
    double result = a+b+c+d;
    
    printf("%f\n", result);
    return 0;
}
