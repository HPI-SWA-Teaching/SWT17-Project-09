as yet unclassified
testPauseButton

	| tool |
	
	tool := DRCRecordingTool new.
	self assert: tool pauseStartTime equals: 0.
	tool 
		actionToggleRecordPause;
		actionToggleRecordPause;
		actionToggleRecordPause.
	self assert: [tool pauseStartTime > 0].
	tool actionStop.
	
	tool delete.