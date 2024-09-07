SELF ?= /vm/Self
BASE ?= ./self/objects
ROOT ?= $(PWD)

all: snapshot

snapshot:
	cd transporter ; git -C TerminalEmulator || git clone git@github.com:OurSelf-Systems/TerminalEmulator.git
	git -C self pull || git clone git@github.com:russellallen/self.git
	echo "[desktop open.]. (memory snapshotOptions: (memory snapshotOptions copy useCompression: false) fileName: 'snapshot') writeSnapshot. quitNoSave" | \
		$(SELF) -f $(BASE)/worldBuilder.self -b $(BASE) -f2 setup.self -o morphic --suspendPsycheBootRoutine 

clean:
	rm -f snapshot
