#AS-MAR22
#EnablesVariousMDEfeaturesWithModerateLevelsOfSecurity
#EnabledGUIMode
Set-MpPreference -UILockdown $False
#EnablehourlyUpdates
Set-MpPreference -SignatureUpdateInterval 1
#SetSevereThreatDefault
Set-MpPreference -SevereThreatDefaultAction Quarantine
#SetHighThreatDefault
Set-MpPreference -HighThreatDefaultAction Quarantine
#SetModerateThreatDefault
Set-MpPreference -ModerateThreatDefaultAction Quarantine
#SetLowThreatDefault
Set-MpPreference -LowThreatDefaultAction Quarantine
#SetMAPS
Set-MpPreference -MAPSReporting 2
#SetIDSIPS
Set-MpPreference -EnableNetworkProtection enabled
#SetDownloadedFilesScan
Set-MpPreference -DisableIOAVProtection $False
#SetEmailScanning
Set-MpPreference -DisableEmailScanning $False
#SetCPUMax
Set-MpPreference -ScanAvgCPULoadFactor 25
#SetRealtimescanning
Set-MpPreference -RealTimeScanDirection 0
#SetRealtimeDetection
Set-MpPreference -DisableRealtimeMonitoring $False
#SetBehaviorMonitoring
Set-MpPreference -DisableBehaviorMonitoring $False
#SetPUAProtection
Set-MpPreference -PUAProtection Enabled
#SetPlatformUpdateCadence
Set-MpPreference -PlatformUpdatesChannel Broad
#SetEngineUpdateCadence
Set-MpPreference -EngineUpdatesChannel Broad
#SetRemovableScanning
Set-MpPreference -DisableRemovableDriveScanning $false
#SetASRrulesToAudit
#Block abuse of exploited vulnerable signed drivers
Add-MpPreference -AttackSurfaceReductionRules_Ids 56a863a9-875e-4185-98a7-b882c64b5ce5 -AttackSurfaceReductionRules_Actions AuditMode
#Block Adobe Reader from creating child processes
Add-MpPreference -AttackSurfaceReductionRules_Ids 7674ba52-37eb-4a4f-a9a1-f0f9a1619a2c -AttackSurfaceReductionRules_Actions AuditMode
#Block all Office applications from creating child processes
Add-MpPreference -AttackSurfaceReductionRules_Ids d4f940ab-401b-4efc-aadc-ad5f3c50688a -AttackSurfaceReductionRules_Actions AuditMode
#Block credential stealing from the Windows local security authority subsystem
Add-MpPreference -AttackSurfaceReductionRules_Ids 9e6c4e1f-7d60-472f-ba1a-a39ef669e4b2 -AttackSurfaceReductionRules_Actions AuditMode
#Block executable content from email client and webmail
Add-MpPreference -AttackSurfaceReductionRules_Ids be9ba2d9-53ea-4cdc-84e5-9b1eeee46550 -AttackSurfaceReductionRules_Actions AuditMode
#Block executable files from running unless they meet a prevalence, age, or trusted list criterion
Add-MpPreference -AttackSurfaceReductionRules_Ids 01443614-cd74-433a-b99e-2ecdc07bfc25 -AttackSurfaceReductionRules_Actions AuditMode
#Block execution of potentially obfuscated scripts
Add-MpPreference -AttackSurfaceReductionRules_Ids 5beb7efe-fd9a-4556-801d-275e5ffc04cc -AttackSurfaceReductionRules_Actions AuditMode
#Block JavaScript or VBScript from launching downloaded executable content
Add-MpPreference -AttackSurfaceReductionRules_Ids 3b576869-a4ec-4529-8536-b80a7769e899 -AttackSurfaceReductionRules_Actions AuditMode
#Block Office applications from injecting code into other processes
Add-MpPreference -AttackSurfaceReductionRules_Ids 75668c1f-73b5-4cf0-bb93-3ecf5cb7cc84 -AttackSurfaceReductionRules_Actions AuditMode
#Block Office communication application from creating child processes
Add-MpPreference -AttackSurfaceReductionRules_Ids 26190899-1602-49e8-8b27-eb1d0a1ce869 -AttackSurfaceReductionRules_Actions AuditMode
#Block persistence through WMI event subscription
Add-MpPreference -AttackSurfaceReductionRules_Ids e6db77e5-3df2-4cf1-b95a-636979351e5b -AttackSurfaceReductionRules_Actions AuditMode
#Block process creations originating from PSExec and WMI commands
Add-MpPreference -AttackSurfaceReductionRules_Ids d1e49aac-8f56-4280-b9ba-993a6d77406c -AttackSurfaceReductionRules_Actions AuditMode
#Block untrusted and unsigned processes that run from USB
Add-MpPreference -AttackSurfaceReductionRules_Ids b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4 -AttackSurfaceReductionRules_Actions AuditMode
#Block Win32 API calls from Office macros
Add-MpPreference -AttackSurfaceReductionRules_Ids 92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b -AttackSurfaceReductionRules_Actions AuditMode
#Use advanced protection against ransomware
Add-MpPreference -AttackSurfaceReductionRules_Ids c1db55ab-c21a-4637-bb3f-a12568109d35 -AttackSurfaceReductionRules_Actions AuditMode
