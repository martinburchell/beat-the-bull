BEEB := beeb
SSD_FILE := beat-the-bull.ssd
RM := rm -f
PROJECT_ROOT := .


ssd:
	$(RM) $(SSD_FILE)
	$(BEEB) blank_ssd $(SSD_FILE) && \
	$(BEEB) putfile $(SSD_FILE) boot && \
	$(BEEB) putfile $(SSD_FILE) bull && \
	$(BEEB) putfile $(SSD_FILE) bull2 && \
	$(BEEB) putfile $(SSD_FILE) c.bull && \
	$(BEEB) opt4 $(SSD_FILE) 3

.PHONY: ssd
