/*
  Copyright (C) 2022 Ángel Ruiz Fernández
  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU Lesser General Public License as
  published by the Free Software Foundation, version 3.
  This program is distributed in the hope that it will be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU Lesser General Public License for more details.
  You should have received a copy of the GNU Lesser General Public
  License along with this program.  If not, see
  <http://www.gnu.org/licenses/>
*/

#ifndef _UTIL_TIME_H
#define _UTIL_TIME_H

#include <stdint.h>
#include <sys/time.h>

/*#	ifndef _TIMEVAL_DEFINED
#		define _TIMEVAL_DEFINED
struct timeval {
	uint64_t tv_sec;
	uint32_t tv_usec;
};
//#	endif /* _TIMEVAL_DEFINED */

void timersub(struct timeval *a, struct timeval *b,
							struct timeval *res);
				
#endif /* _UTIL_TIME_H */