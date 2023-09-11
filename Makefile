SELF=/usr/local/bin/Self
BASE=./self/objects
ROOT=$(PWD)

all: snapshot

snapshot:
	$(SELF) -f $(BASE)/worldBuilder.self -b $(BASE) -f2 setup.self -o morphic --suspendPsycheBootRoutine 

snapshot_old:
	Xvfb :1 &
	echo "[desktop open.]. (memory snapshotOptions: (memory snapshotOptions copy useCompression: true) fileName: 'snapshot') writeSnapshot. quitNoSave" | \
	    DISPLAY=:1 $(SELF) -f $(BASE)/worldBuilder.self -b $(BASE) -f2 setup.self -o morphic --suspendPsycheBootRoutine 
	# OK, OK I know but I'm lazy
	killall Xvfb

clean:
	rm -f snapshot
