all: Engine MiniCraft

MiniCraft: Engine
	$(MAKE) $(MAKEFLAGS) -C MiniCraft

Engine:
	$(MAKE) $(MAKEFLAGS) -C Engine/Engine

.PHONY: MiniCraft Engine
