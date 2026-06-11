.PHONY: clean

clean:
	@find . -name ".DS_Store" -type f -delete
	@find . -name "trust.json.lock" -type f -delete
