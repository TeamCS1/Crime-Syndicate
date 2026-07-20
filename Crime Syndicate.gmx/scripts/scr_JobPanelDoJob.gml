///scr_JobPanelDoJob(moneyToAdd,XPToAdd,staminaCost,jobCompleted)
//func scr_JobPanelDoJob(moneyToAdd,XPToAdd,staminaCost,jobCompleted)
// @arg moneyCount    
// @arg currentXP 
// @arg staminaCount  
// @arg jobsCompleted     

global.moneyCount += argument[0];
global.currentXP += argument[1];
global.staminaCount -= argument[2];
global.jobsCompleted += argument[3];
