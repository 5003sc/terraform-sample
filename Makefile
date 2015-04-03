all: install

install:
	@brew install caskroom/cask/brew-cask
	@brew cask install chefdk
	@brew install packer
	@brew install terraform

berks:
	@rm -rf ./chef-repo/cookbooks
	@berks vendor ./chef-repo/cookbooks
