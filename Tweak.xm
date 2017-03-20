static BOOL godStopIt = true;

@interface SBDashBoardPasscodeViewController

-(void)passcodeLockViewCancelButtonPressed:(id)arg1 ;

@end

%hook SBDashBoardPasscodeViewController


-(void)viewWillAppear:(BOOL)arg1 {
	%orig;
	if(godStopIt){
		[self passcodeLockViewCancelButtonPressed:nil];
		godStopIt = false;
	}
}


%end