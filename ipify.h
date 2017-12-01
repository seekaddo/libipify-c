
/*!
 * @file libipify.h
 *
 *@brief A client library for ipify: A Simple IP Address API in C.
 *
 * @author Dennis Addo ic16b026
 * @see URL: https://github.com/seekaddo/libipify-c$
 *
 * @date 12/1/17.
 *
 * @version 1.0
 *
 * @todo All implentations must be contained in one method structure unless these functions
 *      are required by other programs/methods
 *
 */

#ifndef IPIFY_H
#define IPIFY_H


extern void ipify_connect(void);
extern void ipify_disconnect(void);
extern char *ipify_getIP(void);


#endif //LIBIPIFY_C_LIBIPIFY_H
