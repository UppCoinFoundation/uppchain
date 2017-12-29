

OUTDIR=js
OUTFILE=uppchain.js
MAINFILE=app/Main.elm


all:
	mkdir -p $(OUTDIR)
	elm-make $(MAINFILE) --output=$(OUTDIR)/$(OUTFILE)
