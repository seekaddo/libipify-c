[![build](https://img.shields.io/travis/seekaddo/libipify-c.svg)](https://travis-ci.org/seekaddo/libipify-c)


## BroadcastMesg[![license](https://img.shields.io/github/license/mashape/apistatus.svg)](https://github.com/seekaddo/libipify-c/blob/master/LICENSE)
Using Semaphores and Shared memory to simulate Server/Client message(sender/receiver)


## libipify-c
A client library for ipify: A Simple IP Address API in C.


## Purpose

ipify is the best IP address lookup service on the internet. It's fast, simple, scalable, open source, and well-funded [Randall Degges](http://www.rdegges.com).

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
    
    // no free needed here. It uses static gloabl buffer of size 4069 which is enough for GET response
    char *ipptr = ipify_getIP(); 
    
    fprintf(stdout, "Public ip is: %s\n", ipptr);
    ipify_disconnect();
    
    return 0
}


```

Test
After running your C program about compare your terminal results with this

```bash
#Do this in the terminal
curl 'https://api.ipify.org?format=json'

```


