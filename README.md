> love 

a monorepo for game jam development
via shared lua libs and abstractions


## Setup
`./scripts/macos_setup.sh` - installs deps for macos.

for any other platform just look at the brew deps and get those pkgs if you want to try it out.

if you want precommit hooks run `hook-init`

run `git submodule update --init --recursive` to grab the correct vendors.

### Vendors

The below vendor packages exist under `/packages`. amongst the first party tooling.
currently, they are submods. they may subtree'd in the future for tweaks, but expect them to be untweakable for this commit.

`sti@1.2.3.0` - tiled + lua

---

## Makefile

`make love $(GAME)` - will run any game configured in the games folder. will target g1 if you just say `make love`




## Tooling

[LOVE](https://love2d.org/wiki) - engine

[Luacheck](https://luacheck.readthedocs.io) - sa / linting 

[Stylua](https://github.com/JohnnyMorganz/StyLua) - formatting

[Busted](https://olivinelabs.com/busted/) - testing