# Secrets management

Don't add secrets to dotfiles; instead use macOS's built-in `security` command that can retrieve secrets from your Keychain.

## Generic passwords

Store a secret:

```sh
$ security add-generic-password -a "$USER" -s 'MY_SECRET' -w 's3cr3t'
```

Retrieve a generic secret (e.g. in your `.zshrc` file):

```sh
export MY_SECRET=$(security find-generic-password -a "$USER" -s 'MY_SECRET' -w)
```

## Internet passwords

Retrieve an "Internet password" stored in keychain (e.g. in your `.zshrc` file):

```sh
export MY_GITHUB_PAC=$(security find-internet-password -s "github.com" -w)
```
