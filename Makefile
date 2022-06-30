# Directories
HOME         = /Users/dgloor
CONFIG_DIR   = $(HOME)/.config
DOTS_HOME		 = $(HOME)/Repos/dotfiles
DOTS_DF_DIR	 = $(DOTS_HOME)/config
DOTS_SF_DIR	 = $(DOTS_HOME)/config-sf

# Actions
RM_DIR       = @rm -rf $(CONFIG_DIR)/$@
LN_SF        = @ln -sf $(DOTS_SF_DIR)/$@ $(HOME)/$@ 
LN_DF        = @ln -sf $(DOTS_DF_DIR)/$@ $(CONFIG_DIR)/$@

# Targets
DF_CONFIGS   = alacritty bottom lf nvim
SF_CONFIGS   = .zshrc .zshenv .vimrc .gitconfig

install: $(SF_CONFIGS) $(DF_CONFIGS) starship.toml
	@echo "Your config files are ready!"

$(SF_CONFIGS):
	$(LN_SF)
	@echo "* $@ (ready)"

$(DF_CONFIGS):
	$(RM_DIR)
	$(LN_DF)
	@echo "* $@ (ready)"

starship.toml:
	@ln -sf $(DOTS_SF_DIR)/$@ $(CONFIG_DIR)/$@
	@echo "* $@ (ready)"

clean:
	$(RM_DIR)

