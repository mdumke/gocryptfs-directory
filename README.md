# An Encrypted Directory

This is a place to store strongly encrypted data on your Linux computer. It uses [gocryptfs](https://github.com/rfjakob/gocryptfs). Encrypted files will be stored in the folder named `encrypted`.

Make sure the folder `secrets` is always empty!


## Accessing Files

In order to work with your encrypted directory, a few steps are necessary:

1. Open a `terminal` and go to your secret folder: `cd ~/secret`
2. Decrypt the directory: `make open`
3. Now you can use the `secrets` directory, just like you would use a USB stick
4. Don't forget to run `make close` when you're done!


## Setup

Download this repository into an empty directory `~/secret`. The program `gocrpytfs` needs to be installed on your computer: `sudo apt install gocryptfs`.

Now, create two directories and initialize encryption. This can be done using a make task:

```bash
# go to the secret directory
cd ~/secret

# and run the setup tasks
make setup
```

That's it. If you use different directory names, be sure to change the `Makefile` accordingly.


## Recovery

When you mount the directory, a `master key` will be displayed. Print this out and store it somewhere safe. If you forget your password, this is the only way to get to your data again. To use the masterkey, enter it in the `Makefile`, then run `make recovery`. Then delete the key again.

Also: if it's really important data, it's always a good idea to have a backup!
