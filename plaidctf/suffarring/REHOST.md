# REHOSTING

Files can be found here: [PlaidCTF 2019](https://github.com/sajjadium/ctf-archives/blob/main/ctfs/PlaidCTF/2019/Suffarring)

## Challenge Setup
After downloading the files, please check if the libc file is linked to the binary file provided for the challenge. There was 1 libc files for the challenge which is `libc.so.6`.

Use this:
```
ldd suffarring
```

If this gives the file name then the libc file is recognized and the challenge should work.

## Dependency Troubleshooting
If the libc files are used as dependencies by the challenge so we might runto problems where the files are not recognized so we can use this command to patch that:
```
patchelf --set-rpath /challenge /challenge/suffarring
```