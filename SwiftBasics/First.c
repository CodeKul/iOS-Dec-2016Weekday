//
//  First.c
//  
//
//  Created by Varun on 15/11/16.
//
//

#include <stdio.h>

int main() {
    
    int i = 0, j = 0;                          //Initialization
    /*
    do {
        printf("%d CodeKul\n",i+1);     //Statements
        i++;                            //Increament / Decreament
    } while (i < 0);                    //Condition
    */
    
    while (i<10){
        j = 10;
        while (j>i+1) {
           printf("");
           j--;
        }
        printf("\n");
        i++;
    }
    
    /*
    for (i = 0; i < 5; i++) {           //Initialization ; Condition ; Increament / Dcreament
        for (j = 0; j<i+1; j++) {
            printf("*");
        }
        printf("\n");
    }
    */
    return 0;
}
