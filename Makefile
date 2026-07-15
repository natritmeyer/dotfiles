.PHONY: clean stow update

clean:
	@find . -name ".DS_Store" -type f -delete
	@find . -name "trust.json.lock" -type f -delete

stow:
	@stow stow
	@stow brew
	@brew bundle -g
	@stow ghostty git gpg nvim opencode zed zsh

update:
	@rustup update
	@brew update
	@brew bundle -g
	@brew upgrade
	@brew upgrade --cask --greedy
