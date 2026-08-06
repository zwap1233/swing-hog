HOG_DO:=./Hog/Do
PRJ:=swing
PRJ_FILE:=./Projects/$(PRJ)/$(PRJ).xpr

.PHONY: clean clean-petalinux prj 

all: $(PRJ_FILE)
	$(HOG_DO) WORKFLOW $(PRJ)

gui: $(PRJ_FILE)
	vivado $(PRJ_FILE)

prj $(PRJ_FILE):
	$(HOG_DO) CREATE $(PRJ)

clean-all: clean clean-petalinux

clean:
	rm -rf ./SimulationLib/
	rm -rf ./Projects/
	rm -rf *.jou
	rm -rf *.log
	rm -rf *.str
	rm -rf ./NA/

clean-petalinux:
	rm -rf ./petalinux/blink/build
