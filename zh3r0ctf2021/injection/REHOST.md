# REHOSTING

Files can be found here: [Zh3r0 CTF V2](https://github.com/zh3r0/zh3r0-ctf/tree/main/V2/crypto/1n_jection)

## Challenge Setup
This challenge has only one file which is `challenge.py` and it gets the flag from a `secret.py` file in the original challenge but we are getting the flag using the code below:

```
flag = open("/flag", "r").read().strip().encode()
```

I used encode as in the original challenge the flag was in bytes and we get it in string from `/flag`