#!/bin/bash
gcc -DHAVE_CONFIG_H -I. -pthread -fno-strict-aliasing    -Ofast -flto -fuse-linker-plugin -O3 -march=native -D__arm__ -MT minerd-cpu-miner.o -MD -MP -MF .deps/minerd-cpu-miner.Tpo -c -o minerd-cpu-miner.o `test -f 'cpu-miner.c' || echo './'`cpu-miner.c
gcc -Ofast -flto -fuse-linker-plugin -march=native -O3 -D__arm__ -pthread  -o minerd minerd-cpu-miner.o minerd-util.o minerd-sha2.o minerd-scrypt.o minerd-keccak.o minerd-heavy.o minerd-quark.o minerd-skein.o minerd-ink.o minerd-blake.o minerd-cryptonight.o minerd-fresh.o minerd-x11.o minerd-x13.o minerd-x14.o minerd-x15.o sha3/minerd-sph_keccak.o sha3/minerd-sph_hefty1.o sha3/minerd-sph_groestl.o sha3/minerd-sph_skein.o sha3/minerd-sph_bmw.o sha3/minerd-sph_jh.o sha3/minerd-sph_shavite.o sha3/minerd-sph_blake.o sha3/minerd-sph_luffa.o sha3/minerd-sph_cubehash.o sha3/minerd-sph_simd.o sha3/minerd-sph_echo.o sha3/minerd-sph_hamsi.o sha3/minerd-sph_fugue.o sha3/minerd-sph_shabal.o sha3/minerd-sph_whirlpool.o crypto/minerd-oaes_lib.o crypto/minerd-c_keccak.o crypto/minerd-c_groestl.o crypto/minerd-c_blake256.o crypto/minerd-c_jh.o crypto/minerd-c_skein.o crypto/minerd-hash.o crypto/minerd-aesb.o aesb-arm.o crypto/minerd-aesb-x86-impl.o -lcurl -ljansson -lpthread -lcrypto

