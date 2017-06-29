testing
testRecordButtonLabelChange
	
	|recordingTool|
	recordingTool := DRCRecordingTool new.
	self assert: recordingTool getLabel equals: 'Start New Record'.
	recordingTool actionRecord.
	[recordingTool recorder state = #record] whileFalse: [].
	self assert: recordingTool getLabel equals: 'Pause Record'.
	recordingTool actionRecordPause. "Maybe rename: actionPauseResume"
	self assert: recordingTool getLabel equals: 'Resume Record'.
	recordingTool actionRecordPause. "Maybe rename: actionPauseResume"
	[recordingTool recorder state = #record] whileFalse: [].
	self assert: recordingTool getLabel equals: 'Pause Record'.
	recordingTool actionStop.
	self assert: recordingTool getLabel equals: 'Start New Record'.
	recordingTool delete.