#ifdef __cplusplus
#define WASM_EXPORT __attribute__((visibility("default"))) extern "C"
#else
#define WASM_EXPORT __attribute__((visibility("default")))
#endif


/* BEEBS fac benchmark

   MDH WCET BENCHMARK SUITE

   Copyright (C) 2014 Embecosm Limited and University of Bristol

   Contributor Pierre Langlois <pierre.langlois@embecosm.com>

   This file is part of the Bristol/Embecosm Embedded Benchmark Suite.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program. If not, see <http://www.gnu.org/licenses/>. */

#include "support.h"

/* This scale factor will be changed to equalise the runtime of the
   benchmarks. */
#define SCALE_FACTOR    (REPEAT_FACTOR >> 0)

int fac (int n)
{
  if (n == 0)
     return 1;
  else
     return (n * fac (n-1));
}


void
initialise_benchmark (void)
{
}



int verify_benchmark(int r)
{
  int expected = 4037914;
  if (r != expected)
    return 0;
  return 1;
}

WASM_EXPORT int main(int argc, char *argv[])
{
    initialise_benchmark();
  int i;
  volatile int s = 0;
  volatile int n;

  n = 10;
  for (i = 0;  i <= n; i++)
      s += fac (i);
  verify_benchmark(s);
  return s;
}
