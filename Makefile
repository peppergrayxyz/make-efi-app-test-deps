.DEFAULT_GOAL=all

%:
	$(MAKE) -C $(@D) build/$(@F)
