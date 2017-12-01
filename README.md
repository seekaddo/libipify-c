## libipify-c
A client library for ipify: A Simple IP Address API in C.


## Purpose

ipify is the best IP address lookup service on the internet. It's fast, simple, scalable, open source, and well-funded (Randall Degges).

In short: if you need a way to pragmatically get your public IP address, ipify is the best possible choice!

This library will retrieve your public IP address from ipify's API service, and return it as a string. It can't get any simpler than that.



Usage

```bash

 git clone https://github.com/seekaddo/libipify-c.git
 cd libipify-c
 make all && make install

```


```C

#include <stdio.h>
#include <ipify.h>

int main(void){


    ipify_connect();
    char *ipptr = ipify_getIP();

    fprintf(stdout, "Public ip is: %s\n", ipptr);
    ipify_disconnect();
}


```


