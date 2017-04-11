Advanced Usage
==============

## Auto Login

### Mechanism

SSH uses [Public-key cryptography](https://en.wikipedia.org/wiki/Public-key_cryptography) for authentication.

> Public key cryptography, or asymmetric cryptography, is any cryptographic system that uses pairs of keys: public keys which may be disseminated widely, and private keys which are known only to the owner. This accomplishes two functions: authentication, which is when the public key is used to verify that a holder of the paired private key sent the message, and encryption, whereby only the holder of the paired private key can decrypt the message encrypted with the public key.

SSH public-key authentication relies on asymmetric cryptographic algorithms that generate a pair of separate keys (i.e., a key pair), one "private" and the other "public". You keep the private key a secret and store it on the computer you use to connect to the remote system. Conceivably, you can share the public key with anyone without compromising the private key.

Therefore we can generate a **key pair** and store the **public key** to the remote server, the login process can be authenticated as below:
1. ssh client sends a login request to the remote server
2. the server responds a random string to the client
3. the client encrypts the random string with the private key, then sends it to the server
4. the server uses the public key to verify the string.

Actually, the public key should be stored at `~/.ssh/authorized_keys` of your home folder.

### Key Generation

OS X and Linux users can use `ssh-keygen` command to generate key pair, which by default are stored in `~/.ssh/` folder. Windows users can use [PuttyGen](https://the.earth.li/~sgtatham/putty/latest/w64/puttygen.exe) or other available tools to genrate the key pair. Note that the file with `.pub` postfix is the public key, and the other one is the private key, **DO NOT** share private key with anyone.

### Copy Public Key

Use `scp` command or graphical tools such as WinSCP to copy the public key file(`~/.ssh/id_rsa.pub`) to your home folder, then log into your account and excute:

```bash
cat id_rsa.pub >> ~/.ssh/authorized_keys
rm id_rsa.pub
```

then exit the session.

Windows users should also set auth key profiles in putty, check [How do I set up SSH public-key authentication to connect to a remote system?](https://kb.iu.edu/d/aews) for more details.

Next time you login, the authentication process is automatically done by the public key cryptography.