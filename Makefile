# Only include git files
acm.zip: mechanize/__init__.py
	@git ls-files --exclude-standard | zip -@ -x Makefile -x .gitignore -u $@ || true

mechanize/__init__.py: requirements.txt
	@pip install -r $<

clean:
	@rm -f acm.zip

.PHONY: acm.zip clean
