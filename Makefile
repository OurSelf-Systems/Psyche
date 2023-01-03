SELF=/usr/local/bin/Self
BASE=./self/objects
ROOT=$(PWD)

all: snapshot

snapshot:
	echo "saveAs: 'snapshot'. quitNoSave" | $(SELF) -f $(BASE)/worldBuilder.self -b $(BASE) -f2 setup.self -o morphic 

clean:
	rm -f snapshot

