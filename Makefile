TEX := main.tex
PDF := main.pdf
BUILD_DIR := build
TECTONIC ?= tectonic

.PHONY: all clean rebuild

all: $(PDF)

$(PDF): $(TEX)
	@mkdir -p $(BUILD_DIR)
	$(TECTONIC) --outdir $(BUILD_DIR) --keep-logs $(TEX)
	cp $(BUILD_DIR)/$(PDF) $(PDF)

clean:
	rm -rf $(BUILD_DIR) $(PDF)

rebuild: clean all
