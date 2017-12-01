//
// Created by Addo Dennis on 12/1/17.
//


#include <stdio.h>
#include <ipify.h>

int main(void){


    ipify_connect();
    char *ipptr = ipify_getIP();

    fprintf(stdout, "Public ip is: %s\n", ipptr);
    ipify_disconnect();
}
