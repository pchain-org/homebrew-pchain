# homebrew-pchain

you can use our Homebrew tap to install pchain. If you don't have Homebrew,[install it first](https://brew.sh/)

Then run the following commands to add the tap and install `pchain`:

```shell
brew tap pchain-org/pchain
brew install pchain
```

Upgrade pchain client

```shell
brew upgrade pchain
```
After installing, run `pchain account new` to create an account on your node.

Make sure to check the different options and commands with `pchain --help`

## Building from source

### Building pchain (command line client)

Clone the repository to a directory of your choosing:

```shell
git https://github.com/pchain-org/pchain.git
```

Building `pchain` requires the Go compiler:

```shell
brew install go
```

Finally, build the `pchain` program using the following command.
```shell
cd pchain
make pchain
```

If you see some errors related to header files of Mac OS system library, install XCode Command Line Tools, and try again.

```shell
xcode-select --install
```

You can now run `./bin/pchain --help` to check the different options and commands.
