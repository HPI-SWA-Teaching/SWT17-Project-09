commands
record
		
	self resetSavedState.
	(self recordingTool isSaving) ifTrue: [self saveStateIn: (self savedObjects)].	
	self stop;
	writeCheck;
	addJournalFile;
	pauseTotalTime: 0.
	tapeStream := WriteStream on: (Array new: 10000).
	self resumeRecordIn: ActiveWorld.		