# Nat Ritmeyer's dot files

## Dependencies

The easiest way to manage these dot files is to deploy them using [GNU Stow](https://www.gnu.org/software/stow/) - install with `brew install stow`.

## Usage

1. Clone this repo to the home directory. Should result in `~/dotfiles`.
2. Run `stow dirname` for each set of dotfiles to be symlinked in the home directory. E.g. to create symlinks in the home directory that point at the dotfiles in the `git` directory, run `stow git`.

## Notes

### git

* `.gitconfig` - Normal gitconfig
* `.gitigore_global` - Stuff I want ignoring everywhere (`.gitconfig` points to this file)

### jabba

* `.jabbarc` - sets the version of Java I want `JAVA_HOME` to point to.

##### Install and configuration notes

1. Install as per [instructions on home page](https://github.com/shyiko/jabba#installation)
2. Install jdk: `jabba install openjdk@1.11.0-1`
3. `stow jabba`
4. Set default jdk: `jabba alias default openjdk@1.11.0-1`

