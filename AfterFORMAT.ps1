If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
	Exit
}

[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$XAML = @"
<Window 
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"


        Title="AfterFORMAT" Height="525" Width="750" MinWidth="750" MinHeight="525" MaxWidth="750" MaxHeight="525">
    <Grid Background="#FF7D7D7D" VerticalAlignment="Stretch" HorizontalAlignment="Stretch">

        <Button Name="apply" Content="Apply" HorizontalAlignment="Center" Margin="0,445,0,0" VerticalAlignment="Top" Width="125" Height="25" FontWeight="Bold"/>
        <Button Name="close_window" Content="Close" HorizontalAlignment="Left" Margin="590,10,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="enable_nfs" Content="Enable NFS" HorizontalAlignment="Left" Margin="280,45,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="get_directx" Content="Get DirectX" HorizontalAlignment="Left" Margin="145,45,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="get_redist" Content="Get Visual C++" HorizontalAlignment="Left" Margin="10,45,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="install_chocolatey" Content="Install CHOCOLATEY" HorizontalAlignment="Left" Margin="145,10,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="install_winget" Content="Install WINGET" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="open_ninite" Content="Open ninite.com" HorizontalAlignment="Left" Margin="280,10,0,0" VerticalAlignment="Top" Height="25" Width="124" FontWeight="Bold"/>
        <Button Name="apply_hostname" Content="Apply hostname" HorizontalAlignment="Left" Margin="514,158,0,0" VerticalAlignment="Top" Height="24" Width="126" FontWeight="Bold"/>
        
        <CheckBox Name="app_7zip" Content="7-zip" HorizontalAlignment="Left" Margin="10,100,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_adguard" Content="Adguard" HorizontalAlignment="Left" Margin="10,125,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_audacity" Content="Audacity" HorizontalAlignment="Left" Margin="10,150,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_discord" Content="Discord" HorizontalAlignment="Left" Margin="10,175,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_displaycal" Content="DisplayCAL" HorizontalAlignment="Left" Margin="10,200,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_googlechrome" Content="Google Chrome" HorizontalAlignment="Left" Margin="10,225,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_hashtab" Content="HashTab" HorizontalAlignment="Left" Margin="10,250,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_keepass" Content="KeePass" HorizontalAlignment="Left" Margin="10,275,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_klitecodecpack" Content="K-Lite Codec Pack" HorizontalAlignment="Left" Margin="10,300,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_logitechghub" Content="Logitech G HUB" HorizontalAlignment="Left" Margin="10,325,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_mediainfo" Content="MediaInfo" HorizontalAlignment="Left" Margin="10,350,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_msiafterburner" Content="MSI Afterburner" HorizontalAlignment="Left" Margin="10,375,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_notepadPP" Content="Notepad++" HorizontalAlignment="Left" Margin="10,400,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_obsstudio" Content="OBS Studio" HorizontalAlignment="Left" Margin="145,100,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_putty" Content="Putty" HorizontalAlignment="Left" Margin="145,125,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_red" Content="RED" HorizontalAlignment="Left" Margin="145,150,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_rivatuner" Content="RivaTuner" HorizontalAlignment="Left" Margin="145,175,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_samsungdex" Content="Samsung DeX" HorizontalAlignment="Left" Margin="145,200,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_samsungflow" Content="Samsung FLOW" HorizontalAlignment="Left" Margin="145,225,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_soundswitch" Content="SoundSwitch" HorizontalAlignment="Left" Margin="145,250,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_spotify" Content="Spotify" HorizontalAlignment="Left" Margin="145,275,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_synctrayzor" Content="SyncTrayzor" HorizontalAlignment="Left" Margin="145,300,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_teamspeak3" Content="TeamSpeak 3" HorizontalAlignment="Left" Margin="145,325,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_teamviewer" Content="TeamViewer" HorizontalAlignment="Left" Margin="145,350,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_totalcommander" Content="Total Commander" HorizontalAlignment="Left" Margin="145,375,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_VLC" Content="VLC" HorizontalAlignment="Left" Margin="145,400,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_winspc" Content="WinSCP" HorizontalAlignment="Left" Margin="290,100,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="change_uac" Content="Change UAC" HorizontalAlignment="Left" Margin="502,100,0,0" VerticalAlignment="Top" Width="150" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="change_autologon" Content="Enable auto log on" HorizontalAlignment="Left" Margin="502,192,0,0" VerticalAlignment="Top" Width="150" Height="16" FontSize="13" FontWeight="Normal"/>

        <Separator Height="10" Margin="10,425,10,0" VerticalAlignment="Top" Background="White"/>
        <Separator Height="10" Margin="10,80,10,0" VerticalAlignment="Top" Background="White"/>
        <Separator HorizontalAlignment="Left" Height="325" Margin="273,95,0,0" VerticalAlignment="Top" Width="334" RenderTransformOrigin="0.5,0.5" Background="White">
            <Separator.RenderTransform>
                <TransformGroup>
                    <ScaleTransform/>
                    <SkewTransform/>
                    <RotateTransform Angle="90"/>
                    <TranslateTransform/>
                </TransformGroup>
            </Separator.RenderTransform>
        </Separator>
        
        <TextBox Name="set_hostname" HorizontalAlignment="Left" Height="25" Margin="477,125,0,0" TextWrapping="Wrap" Text="hostname" VerticalAlignment="Top" Width="200" FontSize="14" FontWeight="Bold" TextAlignment="Center"/>

    </Grid>
</Window>
"@

#Read XAML
$reader=(New-Object System.Xml.XmlNodeReader $xaml) 
try{$Form=[Windows.Markup.XamlReader]::Load( $reader )}
catch{Write-Host "Unable to load Windows.Markup.XamlReader"; exit}

# Store Form Objects In PowerShell
$xaml.SelectNodes("//*[@Name]") | ForEach-Object {Set-Variable -Name ($_.Name) -Value $Form.FindName($_.Name)}



#LINKS
$urlMVC = "https://www.techpowerup.com/download/visual-c-redistributable-runtime-package-all-in-one/"
$urlMDX = "https://www.microsoft.com/pl-pl/download/details.aspx?id=35"
$urlNinite = "https://ninite.com/"
$urlChocolatey = "https://community.chocolatey.org/install.ps1"



#SCRIPT PATH
$destination = $MyInvocation.MyCommand.Path
Write-Host "Run from: " $destination
$scriptname = $MyInvocation.MyCommand.Name
Write-Host "Script name: " $scriptname
$destination = $destination.Replace($scriptname,'')
Write-Host "Run from: " $destination


if ($scriptname -eq ''){
    $scriptname = 'AfterFORMAT'
}
if ($destination -eq ''){
    $destination = 'C:\'
}


#LOGS
function TS {Get-Date -Format 'yyyy-MM-dd HH:mm:ss'}
Get-ChildItem -Path $destination -Filter AfterFORMAT.log | Where-Object {$_.Length -gt 1mb} | ForEach-Object {Rename-Item $_.FullName {$_.FullName -replace "AfterFORMAT",("AfterFORMAT_$TS")}}
"[$(TS)] AfterFORMAT [INFO] START " | Out-File -FilePath $destination\AfterFORMAT.log -Append



"[$(TS)] AfterFORMAT [INFO] Run from: " + $destination | Out-File -FilePath $destination\AfterFORMAT.log -Append
"[$(TS)] AfterFORMAT [INFO] Script name: " + $scriptname | Out-File -FilePath $destination\AfterFORMAT.log -Append



$global:hostnameV = $env:COMPUTERNAME
$set_hostname.text = $global:hostnameV

$global:install_7zip = 0
$global:install_adguard = 0
$global:install_audacity = 0
$global:install_discord = 0
$global:install_displaycal = 0
$global:install_googlechrome = 0
$global:install_hashtab = 0
$global:install_keepass = 0
$global:install_klitecodecpack = 0
$global:install_logitechghub = 0
$global:install_mediainfo = 0
$global:install_msiafterburner = 0
$global:install_notepadPP = 0
$global:install_obsstudio = 0
$global:install_putty = 0
$global:install_red = 0
$global:install_rivatuner = 0
$global:install_samsungdex = 0
$global:install_samsungflow = 0
$global:install_soundswitch = 0
$global:install_spotify = 0
$global:install_synctrayzor = 0
$global:install_teamspeak3 = 0
$global:install_teamviewer = 0
$global:install_totalcommander = 0
$global:install_VLC = 0
$global:install_winspc = 0

$global:UAC = 0
$global:ALO = 0

"[$(TS)] AfterFORMAT [INFO] set global variables " | Out-File -FilePath $destination\AfterFORMAT.log -Append



$apply.Add_click({
    #Write-Host "Tutaj instaluję programy zaznaczone checkboxem :D"
    
    $installed = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select DisplayName
    if ($global:install_7zip -eq 1){
        $software = "7-Zip";
        #Write-Host $installed
        If($installed -contains $software) {
	        Write-Host "'$software' NOT is installed."
            Write-Host "Installing 7zip..."
            #winget install -e 7zip.7zip | Out-Host
            #if($?) { Write-Host "Installed 7zip"}
        } else {
	        Write-Host "'$software' is installed."
        }
    }else{
        Write-Host "do not install 7-zip"
    }
    #Write-Host $install_7zip

    #Set-ItemProperty -Path REGISTRY::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name ConsentPromptBehaviorAdmin -Value 0 / 5

    #Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PasswordLess\Device" -Name "DevicePasswordLessBuildVersion" -Value 0



#Write-Host "Installing 7zip..."
#winget install -e 7zip.7zip | Out-Host
#if($?) { Write-Host "Installed 7zip"}
#Write-Host "Installing AdGuard..."
#winget install -a AdGuard.AdGuard | Out-Host
#if($?) { Write-Host "Installed AdGuard"}
#Write-Host "Installing Audacity..."
#winget install -a Audacity.Audacity | Out-Host
#if($?) { Write-Host "Installed Audacity"}
#Write-Host "Installing SoundBlasterCommand..."
#winget install -a CreativeTechnology.SoundBlasterCommand | Out-Host
#if($?) { Write-Host "Installed SoundBlasterCommand"}
#Write-Host "Installing Discord..."
#winget install -a Discord.Discord | Out-Host
#if($?) { Write-Host "Installed Discord"}
#Write-Host "Installing DisplayCAL..."
#winget install -a FlorianHoech.DisplayCAL | Out-Host
#if($?) { Write-Host "Installed DisplayCAL"}
#Write-Host "Installing Java JRE..."
#winget install -a EclipseAdoptium.TemurinJRE.8 | Out-Host
#if($?) { Write-Host "Installed Java JRE"}
#Write-Host "Installing Google Chrome..."
#winget install -a Google.Chrome | Out-Host
#if($?) { Write-Host "Installed Google Chrome"}
#Write-Host "Installing HashTab..."
#winget install -a Implbits.HashTab | Out-Host
#if($?) { Write-Host "Installed HashTab"}
#Write-Host "Installing KeePass..."
#winget install -a DominikReichl.KeePass | Out-Host
#if($?) { Write-Host "Installed KeePass"}
#Write-Host "Installing K-LiteCodecPack..."
#winget install -a CodecGuide.K-LiteCodecPack.Full | Out-Host
#if($?) { Write-Host "Installed K-LiteCodecPack"}
#Write-Host "Installing G HUB..."
#winget install -a Logitech.GHUB | Out-Host
#if($?) { Write-Host "Installed G HUB"}
#Write-Host "Installing MediaInfo..."
#winget install -a MediaArea.MediaInfo.GUI | Out-Host
#if($?) { Write-Host "Installed MediaInfo"}
#Write-Host "Installing Notepad++..."
#winget install -a Notepad++.Notepad++ | Out-Host
#if($?) { Write-Host "Installed Notepad++"}
#Write-Host "Installing OBS Studio..."
#winget install -a OBSProject.OBSStudio | Out-Host
#if($?) { Write-Host "Installed OBS Studio"}
#Write-Host "Installing VirtualBox..."
#winget install -a Oracle.VirtualBox | Out-Host
#if($?) { Write-Host "Installed VirtualBox"}
#Write-Host "Installing PuTTY..."
#winget install -a PuTTY.PuTTY | Out-Host
#if($?) { Write-Host "Installed PuTTY"}
#Write-Host "Installing RemoveEmptyDirectories..."
#winget install -a JonasJohn.RemoveEmptyDirectories | Out-Host
#if($?) { Write-Host "Installed RemoveEmptyDirectories"}
#Write-Host "Installing Samsung DEX..."
#winget install -a Samsung.DeX | Out-Host
#if($?) { Write-Host "Installed Samsung DEX"}
#Write-Host "Installing SoundSwitch..."
#winget install -a AntoineAflalo.SoundSwitch | Out-Host
#if($?) { Write-Host "Installed SoundSwitch"}
#Write-Host "Installing Spotify..."
#winget install -a Spotify.Spotify | Out-Host
#if($?) { Write-Host "Installed Spotify"}
#Write-Host "Installing Syncthing..."
#winget install -a SyncTrayzor.SyncTrayzor | Out-Host
#if($?) { Write-Host "Installed Syncthing"}
#Write-Host "Installing Team Speak..."
#winget install -a TeamSpeakSystems.TeamSpeakClient | Out-Host
#if($?) { Write-Host "Installed Team Speak"}
#Write-Host "Installing Team Viewer..."
#winget install -a TeamViewer.TeamViewer | Out-Host
#if($?) { Write-Host "Installed Team Viewer"}
#Write-Host "Installing Total Commander..."
#winget install -a Ghisler.TotalCommander | Out-Host
#if($?) { Write-Host "Installed Total Commander"}
#Write-Host "Installing VLC..."
#winget install -a VideoLAN.VLC | Out-Host
#if($?) { Write-Host "Installed VLC"}
#Write-Host "Installing WinSCP..."
#winget install -a WinSCP.WinSCP | Out-Host
#if($?) { Write-Host "Installed WinSCP"}
	
	
	
#Write-Host "Installing Bethesda..."
#winget install -e Bethesda.Launcher | Out-Host
#if($?) { Write-Host "Installed Bethesda" }
#Write-Host "Installing EA Desktop..."
#winget install -e ElectronicArts.EADesktop | Out-Host
#if($?) { Write-Host "Installed EA Desktop" }
#Write-Host "Installing Epic Games Launcher..."
#winget install -e EpicGames.EpicGamesLauncher | Out-Host
#if($?) { Write-Host "Installed Epic Games Launcher" }
#Write-Host "Installing GOG Galaxy..."
#winget install -e GOG.Galaxy | Out-Host
#if($?) { Write-Host "Installed GOG Galaxy" }
#Write-Host "Installing Minecraft Launcher..."
#winget install -e Mojang.MinecraftLauncher | Out-Host
#if($?) { Write-Host "Installed Minecraft Launcher" }
#Write-Host "Installing Steam..."
#winget install -e Valve.Steam | Out-Host
#if($?) { Write-Host "Installed Steam" }
#Write-Host "Installing Ubisoft Connect..."
#winget install -e Ubisoft.Connect | Out-Host
#if($?) { Write-Host "Installed Ubisoft Connect" }
#Write-Host "Installing Wargaming Game Center..."
#winget install -e Wargaming.GameCenter | Out-Host
#if($?) { Write-Host "Installed Wargaming Game Center" }
})


#CLOSE APP
$close_window.Add_click({
    "[$(TS)] AfterFORMAT [INFO] close " | Out-File -FilePath $destination\AfterFORMAT.log -Append
    Clear-Host
    $Form.Close()
})


$enable_nfs.Add_Click({
    "[$(TS)] AfterFORMAT [INFO] Start enable NFS " | Out-File -FilePath $destination\AfterFORMAT.log -Append
    Enable-WindowsOptionalFeature -Online -FeatureName "ServicesForNFS-ClientOnly" -All
    Enable-WindowsOptionalFeature -Online -FeatureName "ClientForNFS-Infrastructure" -All
    Enable-WindowsOptionalFeature -Online -FeatureName "NFS-Administration" -All
    nfsadmin client stop
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\ClientForNFS\CurrentVersion\Default" -Name "AnonymousUID" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\ClientForNFS\CurrentVersion\Default" -Name "AnonymousGID" -Type DWord -Value 0
    nfsadmin client start
    nfsadmin client localhost config fileaccess=755 SecFlavors=+sys -krb5 -krb5i
    Write-Host "NFS is enable"
    "[$(TS)] AfterFORMAT [INFO] Finish enable NFS " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$get_directx.Add_click({
    Write-Host "Open website with DirectX End-User Runtime"
    [void] [System.Windows.MessageBox]::Show( "Please click, download and install", "Script completed", "OK", "Information" )
    "[$(TS)] AfterFORMAT [INFO] Open website with DirectX End-User Runtime " | Out-File -FilePath $destination\AfterFORMAT.log -Append
    Start $urlMDX
})


$get_redist.Add_click({
    Write-Host "Open website with Visual C++ Redistributable Runtimes All-in-One"
    [void] [System.Windows.MessageBox]::Show( "Please click, download and install", "Script completed", "OK", "Information" )
    "[$(TS)] AfterFORMAT [INFO] Open website with Visual C++ Redistributable Runtimes All-in-One " | Out-File -FilePath $destination\AfterFORMAT.log -Append
    Start $urlMVC
})


$install_chocolatey.Add_click({
    $chocolatey = Invoke-WebRequest -Uri $urlChocolatey -UserAgent 'Trident' -UseBasicParsing | Out-File -FilePath $destination\AfterFORMAT.log -Append
    $chocolatey.Content
    "[$(TS)] AfterFORMAT [INFO] Install Chocolatey " | Out-File -FilePath $destination\AfterFORMAT.log -Append

    #Write-Host $result
    #add code to install...

})


$install_winget.Add_click({
Write-Host "Checking winget..."
"[$(TS)] AfterFORMAT Checking winget " | Out-File -FilePath $destination\AfterFORMAT.log -Append
if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe){
    Write-Host "Winget Already Installed"
    "[$(TS)] AfterFORMAT [INFO] Winget Already Installed " | Out-File -FilePath $destination\AfterFORMAT.log -Append
}  
else{
	Write-Host "Winget not found, installing it now."
    "[$(TS)] AfterFORMAT [INFO] Winget not found, installing it now " | Out-File -FilePath $destination\AfterFORMAT.log -Append
	Start-Process "ms-appinstaller:?source=https://aka.ms/getwinget"
	$nid = (Get-Process AppInstaller).Id
	Wait-Process -Id $nid
	Write-Host "Winget Installed"
    "[$(TS)] AfterFORMAT [INFO] Winget Installed " | Out-File -FilePath $destination\AfterFORMAT.log -Append
}
})


$open_ninite.Add_click({
    Write-Host "Open Ninite.com"
    [void] [System.Windows.MessageBox]::Show( "Please click, choose what you need, download and install", "Script completed", "OK", "Information" )
    "[$(TS)] AfterFORMAT [INFO] Open Ninite.com " | Out-File -FilePath $destination\AfterFORMAT.log -Append
    Start $urlNinite
})


$apply_hostname.Add_click({
#Write-Host $set_hostname
#Write-Host $global:hostnameV
"[$(TS)] AfterFORMAT [INFO] Initialize the change hostname to " + $set_hostname.text | Out-File -FilePath $destination\AfterFORMAT.log -Append
    if ($set_hostname.text -eq $global:hostnameV){
        Write-Host "hostname cannot be the same"
        "[$(TS)] AfterFORMAT [ERR] Hostname cannot be the same! " | Out-File -FilePath $destination\AfterFORMAT.log -Append
    }else{
        #Write-Host "now is ok"
        $hostnameValue = $set_hostname.text
        Rename-Computer -NewName $hostnameValue
        Write-Host "Change hostname to " $hostnameValue " please reboot your PC"
        [void] [System.Windows.MessageBox]::Show( "Change hostname to " + $hostname + " please reboot your PC", "Script completed", "OK", "Information" )
        "[$(TS)] AfterFORMAT [INFO] Finish change hostname to " + $hostnameValue + " please reboot your PC" | Out-File -FilePath $destination\AfterFORMAT.log -Append
    }
})


$change_uac.Add_Checked({
    $global:UAC = 1
    Write-Host $global:UAC
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$change_uac.Add_Unchecked({
    $global:UAC = 0
    Write-Host $global:UAC
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$change_autologon.Add_Checked({
    $global:ALO = 1
    Write-Host $global:ALO
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$change_autologon.Add_Unchecked({
    $global:ALO = 0
    Write-Host $global:ALO
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_7zip.Add_Checked({
    $global:install_7zip = 1
    Write-Host $global:install_7zip
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_7zip.Add_Unchecked({
    $global:install_7zip = 0
    Write-Host $global:install_7zip
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_adguard.Add_Checked({
    $global:install_adguard = 1
    Write-Host $global:install_adguard
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_adguard.Add_Unchecked({
    $global:install_adguard = 0
    Write-Host $global:install_adguard
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_audacity.Add_Checked({
    $global:install_audacity = 1
    Write-Host $global:install_audacity
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_audacity.Add_Unchecked({
    $global:install_audacity = 0
    Write-Host $global:install_audacity
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_discord.Add_Checked({
    $global:install_discord = 1
    Write-Host $global:install_discord
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_discord.Add_Unchecked({
    $global:install_discord = 0
    Write-Host $global:install_discord
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_displaycal.Add_Checked({
    $global:install_displaycal = 1
    Write-Host $global:install_displaycal
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_displaycal.Add_Unchecked({
    $global:install_displaycal = 0
    Write-Host $global:install_displaycal
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_googlechrome.Add_Checked({
    $global:install_googlechrome = 1
    Write-Host $global:install_googlechrome
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_googlechrome.Add_Unchecked({
    $global:install_googlechrome = 0
    Write-Host $global:install_googlechrome
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_hashtab.Add_Checked({
    $global:install_hashtab = 1
    Write-Host $global:install_hashtab
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_hashtab.Add_Unchecked({
    $global:install_hashtab = 0
    Write-Host $global:install_hashtab
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_keepass.Add_Checked({
    $global:install_keepass = 1
    Write-Host $global:install_keepass
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_keepass.Add_Unchecked({
    $global:install_keepass = 0
    Write-Host $global:install_keepass
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_klitecodecpack.Add_Checked({
    $global:install_klitecodecpack = 1
    Write-Host $global:install_klitecodecpack
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_klitecodecpack.Add_Unchecked({
    $global:install_klitecodecpack = 0
    Write-Host $global:install_klitecodecpack
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_logitechghub.Add_Checked({
    $global:install_logitechghub = 1
    Write-Host $global:install_logitechghub
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_logitechghub.Add_Unchecked({
    $global:install_logitechghub = 0
    Write-Host $global:install_logitechghub
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_mediainfo.Add_Checked({
    $global:install_mediainfo = 1
    Write-Host $global:install_mediainfo
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_mediainfo.Add_Unchecked({
    $global:install_mediainfo = 0
    Write-Host $global:install_mediainfo
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_msiafterburner.Add_Checked({
    $global:install_msiafterburner = 1
    Write-Host $global:install_msiafterburner
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_msiafterburner.Add_Unchecked({
    $global:install_msiafterburner = 0
    Write-Host $global:install_msiafterburner
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_notepadPP.Add_Checked({
    $global:install_notepadPP = 1
    Write-Host $global:install_notepadPP
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_notepadPP.Add_Unchecked({
    $global:install_notepadPP = 0
    Write-Host $global:install_notepadPP
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_obsstudio.Add_Checked({
    $global:install_obsstudio = 1
    Write-Host $global:install_obsstudio
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_obsstudio.Add_Unchecked({
    $global:install_obsstudio = 0
    Write-Host $global:install_obsstudio
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_putty.Add_Checked({
    $global:install_putty = 1
    Write-Host $global:install_putty
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_putty.Add_Unchecked({
    $global:install_putty = 0
    Write-Host $global:install_putty
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_red.Add_Checked({
    $global:install_red = 1
    Write-Host $global:install_red
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_red.Add_Unchecked({
    $global:install_red = 0
    Write-Host $global:install_red
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_rivatuner.Add_Checked({
    $global:install_rivatuner = 1
    Write-Host $global:install_rivatuner
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_rivatuner.Add_Unchecked({
    $global:install_rivatuner = 0
    Write-Host $global:install_rivatuner
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_samsungdex.Add_Checked({
    $global:install_samsungdex = 1
    Write-Host $global:install_samsungdex
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_samsungdex.Add_Unchecked({
    $global:install_samsungdex = 0
    Write-Host $global:install_samsungdex
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_samsungflow.Add_Checked({
    $global:install_samsungflow = 1
    Write-Host $global:install_samsungflow
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_samsungflow.Add_Unchecked({
    $global:install_samsungflow = 0
    Write-Host $global:install_samsungflow
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_soundswitch.Add_Checked({
    $global:install_soundswitch = 1
    Write-Host $global:install_soundswitch
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_soundswitch.Add_Unchecked({
    $global:install_soundswitch = 0
    Write-Host $global:install_soundswitch
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_spotify.Add_Checked({
    $global:install_spotify = 1
    Write-Host $global:install_spotify
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_spotify.Add_Unchecked({
    $global:install_spotify = 0
    Write-Host $global:install_spotify
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_synctrayzor.Add_Checked({
    $global:install_synctrayzor = 1
    Write-Host $global:install_synctrayzor
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_synctrayzor.Add_Unchecked({
    $global:install_synctrayzor = 0
    Write-Host $global:install_synctrayzor
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_teamspeak3.Add_Checked({
    $global:install_teamspeak3 = 1
    Write-Host $global:install_teamspeak3
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_teamspeak3.Add_Unchecked({
    $global:install_teamspeak3 = 0
    Write-Host $global:install_teamspeak3
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_teamviewer.Add_Checked({
    $global:install_teamviewer = 1
    Write-Host $global:install_teamviewer
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_teamviewer.Add_Unchecked({
    $global:install_teamviewer = 0
    Write-Host $global:install_teamviewer
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_totalcommander.Add_Checked({
    $global:install_totalcommander = 1
    Write-Host $global:install_totalcommander
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_totalcommander.Add_Unchecked({
    $global:install_totalcommander = 0
    Write-Host $global:install_totalcommander
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_VLC.Add_Checked({
    $global:install_VLC = 1
    Write-Host $global:install_VLC
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_VLC.Add_Unchecked({
    $global:install_VLC = 0
    Write-Host $global:install_VLC
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


$app_winspc.Add_Checked({
    $global:install_winspc = 1
    Write-Host $global:install_winspc
    "[$(TS)] AfterFORMAT checked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})
$app_winspc.Add_Unchecked({
    $global:install_winspc = 0
    Write-Host $global:install_winspc
    "[$(TS)] AfterFORMAT unchecked xxx " | Out-File -FilePath $destination\AfterFORMAT.log -Append
})


#   !!!Please do not insert code below!!!

#SOURCE:https://github.com/ChrisTitusTech/win10script
#SOURCE:https://docs.microsoft.com/en-us/powershell/

#Show Form
$Form.ShowDialog() | out-null