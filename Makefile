# where to temporarily build the static pages
SITE_DIR   = _site
# source branch, where to build the static pages
SRC_BRANCH = master
# source directory which contains jekyll files
SRC_DIR    = src
# branch used to publish the static pages
DST_BRANCH = gh-pages
# assets
ASSETS     = $(SRC_DIR)/assets
# fonts
FONTS      = $(ASSETS)/fonts


COMMIT_MSG ?=

default:
	@echo "make what? Available targets are:"
	@echo " . publish - publish the built pages as well as original"
	@echo "             changes to remote repo. Assumes that you are"
	@echo "             inside the 'master' branch!"
	@echo " . serve   - build files and start a local server to test changes."
	@echo "             Assumes that you are inside the 'master' branch!"
	@echo " . clean   - clean the generated files"
	@echo " . update  - update 3rd-party js/css files"

publish:
	@read -p "Enter commit message: " cmtMsg && \
	    $(MAKE) COMMIT_MSG="$$cmtMsg" _publish

_publish:
	jekyll build -s $(SRC_DIR) -d $(SITE_DIR)
	git add -A
	git commit -m "$(COMMIT_MSG)"
	git checkout $(DST_BRANCH)
	git rm -qr `ls -I $(SITE_DIR)`
	cp -r $(SITE_DIR)/* .
	git add -A
	git commit -m "$(COMMIT_MSG)"
	git checkout $(SRC_BRANCH)
	git push origin $(SRC_BRANCH) $(DST_BRANCH)

serve:
	jekyll serve -s $(SRC_DIR) -d $(SITE_DIR)

update:
	wget "http://code.jquery.com/jquery-1.11.1.min.js" -O $(ASSETS)/jquery-1.11.1.min.js
	wget "https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.1.1/katex.min.js" -O $(ASSETS)/katex.min.js
	wget "https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.1.1/katex.min.css" -O $(ASSETS)/katex.min.css
	wget "https://github.com/KaTeX/katex-fonts/blob/master/fonts/KaTeX_Main-Italic.woff2?raw=true" -O $(FONTS)/KaTeX_Main-Italic.woff2
	wget "https://github.com/KaTeX/katex-fonts/blob/master/fonts/KaTeX_Main-Regular.woff2?raw=true" -O $(FONTS)/KaTeX_Main-Regular.woff2

clean:
	rm -rf $(SITE_DIR) .sass-cache
