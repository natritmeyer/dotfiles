.PHONY: clean stow update setup-zeta-edit-predictions

clean:
	@find . -name ".DS_Store" -type f -delete
	@find . -name "trust.json.lock" -type f -delete

stow:
	@stow stow
	@stow brew
	@brew bundle -g
	@stow ghostty git gpg nvim opencode zed zeta-model zsh

update:
	@rustup update
	@brew update
	@brew bundle -g
	@brew upgrade --yes
	@brew upgrade --yes --cask --greedy
	@brew cleanup --prune=all
	@brew doctor

setup-zeta-edit-predictions:
	hf download mradermacher/zeta-2.1-GGUF --include "*Q4_K_M.gguf" --local-dir $(HOME)/zeta-model
	cd $(HOME)/zeta-model && ollama create zeta2.1 -f Modelfile
	cd $(HOME)/zeta-model && ollama run zeta2.1
