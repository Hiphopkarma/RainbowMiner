﻿[PSCustomObject]@{
    PoolName = @("Nicehash","MiningPoolHub","NLpool","ZergPool","Zpool")
    ExcludeMinerName = if ($IsLinux) {@("CcminerMTP","Lukminer")} else {@("CcminerMTP")}
    MinerStatusURL = "https://rbminer.net"
    FastestMinerOnly = $true
    RemoteAPI = $false 
    ShowPoolBalances = $true
    ShowPoolBalancesDetails = $true
    ShowWalletBalances = $true
    ShowMinerWindow = $false
    Watchdog = $true 
    UseTimeSync = $false
    MSIAprofile = 0
    DisableMSIAmonitor = $false
    EnableOCProfiles = $false
    EnableOCVoltage = $false
    EnableOCLinuxForcePState = $true
    EnableAutoUpdate = $true
    EnableUpdateDuringPause = $true
    EnableErrorRatio = $true
    EnableAutoAlgorithmAdd = $true
    EnableAlgorithmMapping = $true
    EnableAutoBenchmark = $true
    EnableMinerStatus = $true
    EnableAutoMinerPorts = $true
    EnableMiningHeatControl = $false
    EnableMinerBackups  = $true
    EnableKeepDownloads = $true
    EnableMinersAsRoot = $true
    MiningHeatControl = 2.0
    DisableUnprofitableAlgolist = $false
    CPUMiningThreads = $Global:GlobalCPUInfo.Cores
    CPUMiningAffinity = Get-CPUAffinity $Global:GlobalCPUInfo.RealCores.Count -ToHex
    GPUMiningAffinity = ""
    LinuxXAuthority = "$(Get-LinuxXAuthority)"
    Delay = 1
    EthPillEnable = "disable"
    MinimumMiningIntervals = 1
    MaxActivityDays = 2
    EnableServerConfig = $false
    ServerConfigName = @("config","coins","pools","algorithms","scheduler")
    ExcludeServerConfigVars = @("APIAuth","APIPassword","APIPort","APIUser","CPUMiningAffinity","CPUMiningThreads","DeviceName","EnableServerConfig","ExcludeDeviceName","ExcludeServerConfigVars","GPUMiningAffinity","GroupName","LinuxDisplay","LinuxXAuthority","MSIApath","NVSMIpath","Proxy","RunMode","ServerConfigName","ServerName","ServerPassword","ServerPort","ServerUser","StartPaused","WorkerName")
    EnableServerExcludeList = $false
}