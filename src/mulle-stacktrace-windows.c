#ifdef _WIN32

#include "mulle-stacktrace.h"



void   _mulle_stacktrace_init( struct mulle_stacktrace *stacktrace,
                               mulle_stacktrace_symbolizer_t *symbolize,
                               char *(*trim_belly_fat)( char *),
                               int (*trim_arse_fat)( char *),
                               int (*is_boring)( char *, int size))
{
	// does nothing 
}

// stacktrace may be NULL
void  _mulle_stacktrace( struct mulle_stacktrace *stacktrace,
                         int offset,
                         enum mulle_stacktrace_format format,
                         FILE *fp)
{
	// does absolutely nothing
}


#endif
