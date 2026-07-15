# Secrets management

Don't add secrets to dotfiles; instead use macOS's built-in `security` command that can retrieve secrets from your Keychain.

## Generic passwords

Store a secret:

```sh
security add-generic-password -a "$USER" -s 'MY_SECRET' -w 's3cr3t'
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

## GPG keys

My GPG signing key is `DF5A4DC9CCAFC6D8`. To export it for backup:

```sh
gpg --export-secret-keys DF5A4DC9CCAFC6D8 > gpg-secret-key.asc
gpg --export-ownertrust > gpg-ownertrust.txt
```

Restore on a new machine:

```sh
gpg --import gpg-secret-key.asc
gpg --import-ownertrust gpg-ownertrust.txt
```

After import, set the key as the default signing key:

```sh
gpg --edit-key DF5A4DC9CCAFC6D8
> trust
> 5  # ultimate trust
> quit
```

Then verify it works with `gpg --list-secret-keys` and test signing a commit.
