If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
	Exit
}

# FORM INFO
[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$XAML = @"
<Window 
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        Title="AfterFORMAT 0.4.1.26" Height="525" Width="750" MinWidth="750" MinHeight="525" MaxWidth="750" MaxHeight="525">
    <Grid Background="#FF7D7D7D" VerticalAlignment="Stretch" HorizontalAlignment="Stretch">
        
        <Button Name="close_window" Content="Close" HorizontalAlignment="Left" Margin="590,10,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="install_winget" Content="Install WINGET" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="install_chocolatey" Content="Install CHOCOLATEY" HorizontalAlignment="Left" Margin="145,10,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="open_ninite" Content="Open ninite.com" HorizontalAlignment="Left" Margin="280,10,0,0" VerticalAlignment="Top" Height="25" Width="124" FontWeight="Bold"/>
        <Button Name="get_redist" Content="Get Visual C++" HorizontalAlignment="Left" Margin="10,45,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="get_directx" Content="Get DirectX" HorizontalAlignment="Left" Margin="145,45,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="enable_nfs" Content="Enable NFS" HorizontalAlignment="Left" Margin="280,45,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="apply_hostname" Content="Apply hostname" HorizontalAlignment="Left" Margin="514,208,0,0" VerticalAlignment="Top" Height="24" Width="126" FontWeight="Bold"/>
        <Button Name="apply" Content="Apply" HorizontalAlignment="Center" Margin="0,445,0,0" VerticalAlignment="Top" Width="125" Height="25" FontWeight="Bold"/>
        <Button Name="open_ninitev1" Content="v1" HorizontalAlignment="Left" Margin="415,10,0,0" VerticalAlignment="Top" Height="25" Width="25" FontWeight="Bold"/>
        <Button Name="open_ninitev2" Content="v2" HorizontalAlignment="Left" Margin="450,10,0,0" VerticalAlignment="Top" Height="25" Width="25" FontWeight="Bold"/>
        <Button Name="install_gl" Content="Games Launchers" HorizontalAlignment="Left" Margin="415,45,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="updateallwinget" Content="Update all apps" HorizontalAlignment="Left" Margin="590,445,0,0" VerticalAlignment="Top" Width="125" Height="25" FontWeight="Bold"/>
        
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
        <CheckBox Name="app_samsungdex" Content="Samsung DeX" HorizontalAlignment="Left" Margin="145,175,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_samsungflow" Content="Samsung FLOW" HorizontalAlignment="Left" Margin="145,200,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_soundswitch" Content="SoundSwitch" HorizontalAlignment="Left" Margin="145,225,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_spotify" Content="Spotify" HorizontalAlignment="Left" Margin="145,250,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_synctrayzor" Content="SyncTrayzor" HorizontalAlignment="Left" Margin="145,275,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_teamspeak3" Content="TeamSpeak 3" HorizontalAlignment="Left" Margin="145,300,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_teamviewer" Content="TeamViewer" HorizontalAlignment="Left" Margin="145,325,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_totalcommander" Content="Total Commander" HorizontalAlignment="Left" Margin="145,350,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_VLC" Content="VLC" HorizontalAlignment="Left" Margin="145,375,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_winscp" Content="WinSCP" HorizontalAlignment="Left" Margin="145,400,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="change_autologon" Content="Enable auto log on" HorizontalAlignment="Left" Margin="502,125,0,0" VerticalAlignment="Top" Width="150" Height="16" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="change_uac" Content="Change UAC" HorizontalAlignment="Left" Margin="502,100,0,0" VerticalAlignment="Top" Width="150" Height="15" FontSize="13" FontWeight="Normal"/>
        
        <CheckBox Name="app_touchportal" Content="Touch Portal" HorizontalAlignment="Left" Margin="280,100,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_adobecc" Content="Adobe CC" HorizontalAlignment="Left" Margin="280,125,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_iCUE" Content="Corsair iCUE" HorizontalAlignment="Left" Margin="280,150,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_sharex" Content="ShareX" HorizontalAlignment="Left" Margin="280,175,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_virtualbox" Content="VirtualBox" HorizontalAlignment="Left" Margin="280,202,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="app_firefox" Content="Firefox" HorizontalAlignment="Left" Margin="280,225,0,0" VerticalAlignment="Top" Width="125" Height="15" FontSize="13" FontWeight="Normal"/>
        <CheckBox Name="change_hibernate" Content="Hibernate off" HorizontalAlignment="Left" Margin="502,150,0,0" VerticalAlignment="Top" Width="150" Height="16" FontSize="13" FontWeight="Normal"/>
        
        
        <TextBox Name="set_hostname" HorizontalAlignment="Left" Height="26" Margin="477,174,0,0" TextWrapping="Wrap" Text="Type Here hostname" VerticalAlignment="Top" Width="200" FontSize="14" FontWeight="Bold" TextAlignment="Center" MaxLength="20"/>
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
    </Grid>
</Window>
"@

#READ AXML
$reader=(New-Object System.Xml.XmlNodeReader $xaml) 
try{$Form=[Windows.Markup.XamlReader]::Load( $reader )}
catch{Write-Host "Unable to load Windows.Markup.XamlReader"; exit}

#STORE FORM OBJECTS IN POWERSHELL
$xaml.SelectNodes("//*[@Name]") | ForEach-Object {Set-Variable -Name ($_.Name) -Value $Form.FindName($_.Name)}


#test
Clear-Host
#SCRIPT PATH & NAME
Write-Host "AfterFORMAT by obeliksgall`nhttps://github.com/obeliksgall/AfterFORMAT`nVersion: 0.4.1.26`n"
$global:destination = $MyInvocation.MyCommand.Path
if ( $global:destination -eq $null ) {
    $global:destination = "C:\AfterFORMAT.ps1"
}
Write-Host "FullName: " $global:destination 

$global:scriptname = $MyInvocation.MyCommand.Name
if ( $global:scriptname.Length -le 3 -or $global:scriptname -eq $null) {
    $global:scriptname = "AfterFORMAT.ps1"
}
Write-Host "Name    : " $global:scriptname
$global:destination = $global:destination.Replace($global:scriptname,'')
if ( $global:destination -eq $null ) {
    $global:destination = 'C:\'
}
Write-Host "Path    : " $global:destination
Write-Host "User    : " $env:UserName
Write-Host "`nLogs choco : C:\ProgramData\chocolatey\logs\" 
Write-Host "`nLogs winget: %LOCALAPPDATA%\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\DiagOutputDir\`n" 



#LOGS
function TS {Get-Date -Format 'yyyy-MM-dd HH:mm:ss'}
Get-ChildItem -Path $global:destination -Filter AfterFORMAT.log | Where-Object {$_.Length -gt 5mb} | ForEach-Object {Rename-Item $_.FullName {$_.FullName -replace "AfterFORMAT",("AfterFORMAT_$(TS)")}}
"[$(TS)] AfterFORMAT [START] START AfterFORMAT " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
"[$(TS)] AfterFORMAT [INFO] FullName : $global:destination " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
"[$(TS)] AfterFORMAT [INFO] Name     : $global:scriptname " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
"[$(TS)] AfterFORMAT [INFO] Path     : $global:destination " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append



#GLOBAL VARIABLES
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
$global:install_samsungdex = 0
$global:install_samsungflow = 0
$global:install_soundswitch = 0
$global:install_spotify = 0
$global:install_synctrayzor = 0
$global:install_teamspeak3 = 0
$global:install_teamviewer = 0
$global:install_totalcommander = 0
$global:install_VLC = 0
$global:install_winscp = 0
$global:install_touchportal = 0
$global:install_adobecc = 0
$global:install_iCUE = 0
$global:install_sharex = 0
$global:install_virtualbox = 0
$global:install_firefox = 0



$global:autologon = 0
$global:uac = 0
$global:hibernate = 0
$global:set_hostname.text = $global:hostnameV



$global:urlchocolatey = "https://community.chocolatey.org/install.ps1"
$global:chocolateyinstall = "chocolateyinstall.ps1"
$global:chocolatey = Invoke-WebRequest -Uri $urlChocolatey -UserAgent 'Trident' -UseBasicParsing
$global:chocolatey = Invoke-WebRequest -Uri $urlChocolatey -UserAgent 'Trident' -UseBasicParsing | Out-File -FilePath $global:destination\AfterFORMAT.log -Append



$global:urlNinite = "https://ninite.com/"
$global:urlMVC = "https://www.techpowerup.com/download/visual-c-redistributable-runtime-package-all-in-one/"
$global:urlMDX = "https://www.microsoft.com/pl-pl/download/details.aspx?id=35"
$global:urlNinitev1 = "https://ninite.com/.net4.8-.net5-.net6-.netx5-.netx6-7zip-adoptjava8-adoptjavax8-audacity-chrome-discord-keepass2-klitecodecs-notepadplusplus-putty-sharex-silverlight-spotify-steam-teamviewer15-vlc-winscp/"
$global:urlNinitev2 = "https://ninite.com/.net4.8-.net5-.net6-.netx5-.netx6-7zip-adoptjava8-adoptjavax8-audacity-chrome-discord-keepass2-klitecodecs-notepadplusplus-putty-sharex-silverlight-spotify-teamviewer15-vlc-winscp/" #without Steam



$global:newhostname        =  $env:COMPUTERNAME
$global:set_hostname.text  =  $global:newhostname



$global:win = 0
$global:cho = 0



"[$(TS)] AfterFORMAT [INFO] Set default global variables " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append



$global:cred = Get-Credential -UserName $env:UserName -Message ' '
#C:\ProgramData\chocolatey\logs
#Remove-Item C:\ProgramData\chocolatey\logs\*.log -Force
#Rename-Item C:\ProgramData\chocolatey\logs\chocolatey.log -NewName C:\ProgramData\chocolatey\logs\chocolatey_$(TS).log
#Remove-Item %LOCALAPPDATA%\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\DiagOutputDir\*.log -Force
#Rename-Item %LOCALAPPDATA%\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\DiagOutputDir\*.log -NewName {$_.name -replace "WinGet-","OLD_WinGet-"} 


#INSTALL WINGET
$install_winget.Add_click({
    "[$(TS)] AfterFORMAT [INFO] Checking winget " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    Write-Host "Checking winget..."

    if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe) {
        "[$(TS)] AfterFORMAT [INFO] Winget already installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
        Write-Host "Winget already installed"
    } else {
        "[$(TS)] AfterFORMAT [INFO] Winget not found, installing it now" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
        Write-Host "Winget not found, installing it now"
        Start-Process "ms-appinstaller:?source=https://aka.ms/getwinget"
        $nid = (Get-Process AppInstaller).Id
        Wait-Process -Id $nid
        "[$(TS)] AfterFORMAT [INFO] Winget already installed" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
        Write-Host "Winget already installed"
    }

    if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe) {
        "[$(TS)] AfterFORMAT [INFO] Winget already installed" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    } else {
        "[$(TS)] AfterFORMAT [ERR] Can't install Winget" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    }



    #$logs = Get-Content %LOCALAPPDATA%\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\DiagOutputDir\*.log
    #Add-Content -Path $global:destination\AfterFORMAT.log -Value $logs
    #Remove-Item %LOCALAPPDATA%\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\DiagOutputDir\*.log -Force
    #Rename-Item %LOCALAPPDATA%\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\DiagOutputDir\*.log -NewName {$_.name -replace "WinGet-","OLD_WinGet-"} 


})



#INSTALL CHOCOLATEY
$install_chocolatey.Add_click({
    "[$(TS)] AfterFORMAT [INFO] Checking chocolatey " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    Write-Host "Checking chocolatey..."

    if (Test-Path "C:\ProgramData\chocolatey\choco.exe") {
        "[$(TS)] AfterFORMAT [INFO] Chocolatey already installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
        Write-Host "Chocolatey already installed"
    } else {
        "[$(TS)] AfterFORMAT [INFO] Chocolatey not found, installing it now" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
        Write-Host "Chocolatey not found, installing it now"

        $ExecutionPolicy = Get-ExecutionPolicy
        Set-ExecutionPolicy Unrestricted
        "[$(TS)] AfterFORMAT [INFO] Change ExecutionPolicy to Unrestricted" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append

        $chocolateyy = Invoke-WebRequest -Uri $urlChocolatey -UserAgent 'Trident' -UseBasicParsing
        #New-Item -Path $global:destination -Name $global:chocolateyinstall -ItemType File -Value $global:chocolatey.content -Force
        New-Item -Path 'C:\' -Name 'AfterFORMATinstallchoco.ps1' -ItemType File -Value $chocolateyy.Content -Force
        Start-Sleep 5
        #& $global:destination$global:chocolateyinstall
        #& $global:destination$global:chocolateyinstall | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
        #Remove-Item -Path $global:destination$global:chocolateyinstall -Force
        & 'C:\AfterFORMATinstallchoco.ps1'
        & 'C:\AfterFORMATinstallchoco.ps1' | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
        Start-Sleep 5
        Remove-Item -Path 'C:\AfterFORMATinstallchoco.ps1' -Force

        Set-ExecutionPolicy $ExecutionPolicy
        "[$(TS)] AfterFORMAT [INFO] Change ExecutionPolicy to " + $ExecutionPolicy | Out-File -FilePath $global:destination\AfterFORMAT.log -Append

        "[$(TS)] AfterFORMAT [INFO] Chocolatey already installed" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
        Write-Host "Chocolatey already installed"



    }

    if (Test-Path "C:\ProgramData\chocolatey\choco.exe") {
        "[$(TS)] AfterFORMAT [INFO] Chocolatey already installed" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    } else {
        "[$(TS)] AfterFORMAT [ERR] Can't install chocolatey" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    }


    #$logs = Get-Content C:\ProgramData\chocolatey\logs\chocolatey.log
    #Add-Content -Path $global:destination\AfterFORMAT.log -Value $logs
    #Remove-Item C:\ProgramData\chocolatey\logs\*.log -Force
    #Rename-Item C:\ProgramData\chocolatey\logs\chocolatey.log -NewName C:\ProgramData\chocolatey\logs\chocolatey_$(TS).log



})



#OPEN ninite.com
$open_ninite.Add_click({
    [void] [System.Windows.MessageBox]::Show( "Ninite.com, choose what you want and install", "Script completed", "OK", "Information" )
    "[$(TS)] AfterFORMAT [INFO] Open Ninite.com, choose what you want and install" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    Start $global:urlNinite
})



#OPEN Visual C++ Redistributable Runtimes All-in-One
$get_redist.Add_click({
    [void] [System.Windows.MessageBox]::Show( "Open Visual C++ Redistributable Runtimes All-in-One, download and install", "Script completed", "OK", "Information" )
    "[$(TS)] AfterFORMAT [INFO] Open Visual C++ Redistributable Runtimes All-in-One, download and install" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    Start $global:urlMVC
})



#OPEN DirectX End-User Runtime
$get_directx.Add_click({
    [void] [System.Windows.MessageBox]::Show( "DirectX End-User Runtime, download and install", "Script completed", "OK", "Information" )
    "[$(TS)] AfterFORMAT [INFO] Open DirectX End-User Runtime, download and install" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    Start $global:urlMDX
})



#ENABLE NFS
$enable_nfs.Add_click({
    Enable-WindowsOptionalFeature -Online -FeatureName "ServicesForNFS-ClientOnly" -All
    Enable-WindowsOptionalFeature -Online -FeatureName "ClientForNFS-Infrastructure" -All
    Enable-WindowsOptionalFeature -Online -FeatureName "NFS-Administration" -All
    nfsadmin client stop
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\ClientForNFS\CurrentVersion\Default" -Name "AnonymousUID" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\ClientForNFS\CurrentVersion\Default" -Name "AnonymousGID" -Type DWord -Value 0
    nfsadmin client start
    nfsadmin client localhost config fileaccess=755 SecFlavors=+sys -krb5 -krb5i
    Write-Host "NFS is enable"
    "[$(TS)] AfterFORMAT [INFO] NFS is on" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
})



#CHANGE HOSTNAME
$apply_hostname.Add_click({
    if ($global:set_hostname.text -eq $global:newhostname) {
        Write-Host "Hostname cannot be the same!"
        "[$(TS)] AfterFORMAT [ERR] Hostname cannot be the same!" + $set_hostname.text | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    } else {
        $hostname = $global:set_hostname.text
        Rename-Computer -NewName $hostname
        Write-Host "Change hostname to " $hostname " please reboot your PC"
        [void] [System.Windows.MessageBox]::Show( "Change hostname to " + $hostname + " please reboot your PC", "Script completed", "OK", "Information" )
        "[$(TS)] AfterFORMAT [INFO] Finish change hostname to " + $hostname + " please reboot your PC" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    }
})



$open_ninitev1.Add_click({
    [void] [System.Windows.MessageBox]::Show( "Ninite.com with pack 1", "Script completed", "OK", "Information" )
    "[$(TS)] AfterFORMAT [INFO] Open Ninite.com with pack 1" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    Start $global:urlNinitev1
})



$open_ninitev2.Add_click({
    [void] [System.Windows.MessageBox]::Show( "Ninite.com with pack 2", "Script completed", "OK", "Information" )
    "[$(TS)] AfterFORMAT [INFO] Open Ninite.com with pack 2" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    Start $global:urlNinitev2
})



$install_gl.Add_click({
"[$(TS)] AfterFORMAT [INFO] Check installed programs: " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
#$global:installed = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select DisplayName | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
#$global:installed = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select DisplayName
#if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe) {
#    $global:installedwinget = Winget list | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
#    $global:installedwinget = Winget list
#}
#if (Test-Path "C:\ProgramData\chocolatey\choco.exe") {
#    $global:installedchoco = choco list -localonly | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
#    $global:installedchoco = choco list -localonly
#}



    Write-Host "`nInstallation in progress..."
    "[$(TS)] AfterFORMAT [INFO] Installation in progress..." | Out-File -FilePath $global:destination\AfterFORMAT.log -Append



    if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe) {
        Write-Host "You have the Winget installed"
        $global:installed = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select DisplayName | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
        $global:installed = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select DisplayName
        $global:installedwinget = Winget list | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
        $global:installedwinget = Winget list



            $software = "Bethesda.net Launcher"
            if ($global:installed -match $software -or $global:installedwinget -match $software) {
	            Write-Host "'$software' is installed "
                "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
            } else {
                "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                winget install -e --silent --accept-source-agreements --accept-package-agreements Bethesda.Launcher | Out-Host
                if($?) { Write-Host "Installed '$software'"}
            }

            $software = "EA app"
            if ($global:installed -match $software -or $global:installedwinget -match $software) {
	            Write-Host "'$software' is installed "
                "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
            } else {
                "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                winget install -e --silent --accept-source-agreements --accept-package-agreements ElectronicArts.EADesktop | Out-Host
                if($?) { Write-Host "Installed '$software'"}
            }

            $software = "Epic Games Launcher"
            if ($global:installed -match $software -or $global:installedwinget -match $software) {
	            Write-Host "'$software' is installed "
                "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
            } else {
                "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                winget install -e --silent --accept-source-agreements --accept-package-agreements EpicGames.EpicGamesLauncher | Out-Host
                if($?) { Write-Host "Installed '$software'"}
            }

            $software = "GOG GALAXY"
            if ($global:installed -match $software -or $global:installedwinget -match $software) {
	            Write-Host "'$software' is installed "
                "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
            } else {
                "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                winget install -e --silent --accept-source-agreements --accept-package-agreements GOG.Galaxy | Out-Host
                if($?) { Write-Host "Installed '$software'"}
            }

            $software = "Minecraft Launcher"
            if ($global:installed -match $software -or $global:installedwinget -match $software) {
	            Write-Host "'$software' is installed "
                "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
            } else {
                "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                winget install -e --silent --accept-source-agreements --accept-package-agreements Mojang.MinecraftLauncher | Out-Host
                if($?) { Write-Host "Installed '$software'"}
            }

            $software = "Steam"
            if ($global:installed -match $software -or $global:installedwinget -match $software) {
	            Write-Host "'$software' is installed "
                "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
            } else {
                "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                winget install -e --silent --accept-source-agreements --accept-package-agreements Valve.Steam | Out-Host
                if($?) { Write-Host "Installed '$software'"}
            }

            $software = "Ubisoft Connect"
            if ($global:installed -match $software -or $global:installedwinget -match $software) {
	            Write-Host "'$software' is installed "
                "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
            } else {
                "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                winget install -e --silent --accept-source-agreements --accept-package-agreements Ubisoft.Connect | Out-Host
                if($?) { Write-Host "Installed '$software'"}
            }

            $software = "Wargaming.net Game Center"
            if ($global:installed -match $software -or $global:installedwinget -match $software) {
	            Write-Host "'$software' is installed "
                "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
            } else {
                "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                winget install -e --silent --accept-source-agreements --accept-package-agreements Wargaming.GameCenter | Out-Host
                if($?) { Write-Host "Installed '$software'"}
            }



            #$logs = Get-Content %LOCALAPPDATA%\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\DiagOutputDir\*.log
            #Add-Content -Path $global:destination\AfterFORMAT.log -Value $logs
            #Remove-Item %LOCALAPPDATA%\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\DiagOutputDir\*.log -Force
            #Rename-Item %LOCALAPPDATA%\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\DiagOutputDir\*.log -NewName {$_.name -replace "WinGet-","OLD_WinGet-"} 

    }
    if (Test-Path "C:\ProgramData\chocolatey\choco.exe") {
        Write-Host "You have the Chocolatey installed" 
        $global:installed = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select DisplayName | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
        $global:installed = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select DisplayName
        $global:installedchoco = choco list -localonly | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
        $global:installedchoco = choco list -localonly


               
            $software = "Battle.net"
            if ($global:installed -match $software -or $global:installedchoco -match 'battle.net') {
	            Write-Host "'$software' is installed "
                "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
            } else {
                "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                choco install battle.net --yes --force | Out-Host
                if($?) { Write-Host "Installed '$software'"}
            }
               
            $software = "Origin"
            if ($global:installed -match $software -or $global:installedchoco -match 'origin') {
	            Write-Host "'$software' is installed "
                "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
            } else {
                "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                choco install origin --yes --force | Out-Host
                if($?) { Write-Host "Installed '$software'"}
            }



            #$logs = Get-Content C:\ProgramData\chocolatey\logs\chocolatey.log
            #Add-Content -Path $global:destination\AfterFORMAT.log -Value $logs
            #Remove-Item C:\ProgramData\chocolatey\logs\*.log -Force
            #Remove-Item C:\ProgramData\chocolatey\logs\*.log -Force

    }



    Write-Host "FINISH task"
    Write-Host "`nLogs choco : C:\ProgramData\chocolatey\logs\" 
    Write-Host "`nLogs winget: %LOCALAPPDATA%\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\DiagOutputDir\`n" 

})



$updateallwinget.Add_click({
"[$(TS)] AfterFORMAT [INFO] Check installed programs: " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append


    Write-Host "`nInstallation in progress..."
    "[$(TS)] AfterFORMAT [INFO] Update in progress..." | Out-File -FilePath $global:destination\AfterFORMAT.log -Append



    if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe) {
        Write-Host "You have the Winget installed"
        winget upgrade --all | Out-Host
    }
    if (Test-Path "C:\ProgramData\chocolatey\choco.exe") {
        Write-Host "You have the Chocolatey installed"
        choco upgrade all | Out-Host
    }
})



$app_7zip.Add_Checked({
    $global:install_7zip = 1
    "[$(TS)] AfterFORMAT [INFO] The program 7-Zip was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_7zip.Add_Unchecked({
    $global:install_7zip = 0
    "[$(TS)] AfterFORMAT [INFO] 7-Zip program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_adguard.Add_Checked({
    $global:install_adguard = 1
    "[$(TS)] AfterFORMAT [INFO] The program Adguard was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_adguard.Add_Unchecked({
    $global:install_adguard = 0
    "[$(TS)] AfterFORMAT [INFO] Adguard program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_audacity.Add_Checked({
    $global:install_audacity = 1
    "[$(TS)] AfterFORMAT [INFO] The program Audacity was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_audacity.Add_Unchecked({
    $global:install_audacity = 0
    "[$(TS)] AfterFORMAT [INFO] Audacity program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_discord.Add_Checked({
    $global:install_discord = 1
    "[$(TS)] AfterFORMAT [INFO] The program Discord was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_discord.Add_Unchecked({
    $global:install_discord = 0
    "[$(TS)] AfterFORMAT [INFO] Discord program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_displaycal.Add_Checked({
    $global:install_displaycal = 1
    "[$(TS)] AfterFORMAT [INFO] The program DisplayCAL was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_displaycal.Add_Unchecked({
    $global:install_displaycal = 0
    "[$(TS)] AfterFORMAT [INFO] DisplayCAL program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_googlechrome.Add_Checked({
    $global:install_googlechrome = 1
    "[$(TS)] AfterFORMAT [INFO] The program Google Chrome was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_googlechrome.Add_Unchecked({
    $global:install_googlechrome = 0
    "[$(TS)] AfterFORMAT [INFO] Google Chrome program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_hashtab.Add_Checked({
    $global:install_hashtab = 1
    "[$(TS)] AfterFORMAT [INFO] The program HashTab was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_hashtab.Add_Unchecked({
    $global:install_hashtab = 0
    "[$(TS)] AfterFORMAT [INFO] HashTab program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_keepass.Add_Checked({
    $global:install_keepass = 1
    "[$(TS)] AfterFORMAT [INFO] The program Keepass was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_keepass.Add_Unchecked({
    $global:install_keepass = 0
    "[$(TS)] AfterFORMAT [INFO] Keepass program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_klitecodecpack.Add_Checked({
    $global:install_klitecodecpack = 1
    "[$(TS)] AfterFORMAT [INFO] The program K-Lite Codec Pack was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_klitecodecpack.Add_Unchecked({
    $global:install_klitecodecpack = 0
    "[$(TS)] AfterFORMAT [INFO] K-Lite Codec Pack program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_logitechghub.Add_Checked({
    $global:install_logitechghub = 1
    "[$(TS)] AfterFORMAT [INFO] The program Logitech G HUB was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_logitechghub.Add_Unchecked({
    $global:install_logitechghub = 0
    "[$(TS)] AfterFORMAT [INFO] Logitech G HUB program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_mediainfo.Add_Checked({
    $global:install_mediainfo = 1
    "[$(TS)] AfterFORMAT [INFO] The program MediaInfo was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_mediainfo.Add_Unchecked({
    $global:install_mediainfo = 0
    "[$(TS)] AfterFORMAT [INFO] MediaInfo program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_msiafterburner.Add_Checked({
    $global:install_msiafterburner = 1
    "[$(TS)] AfterFORMAT [INFO] The program MSI Afterburner was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_msiafterburner.Add_Unchecked({
    $global:install_msiafterburner = 0
    "[$(TS)] AfterFORMAT [INFO] MSI Afterburner program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_notepadPP.Add_Checked({
    $global:install_notepadPP = 1
    "[$(TS)] AfterFORMAT [INFO] The program Notepad++ was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_notepadPP.Add_Unchecked({
    $global:install_notepadPP = 0
    "[$(TS)] AfterFORMAT [INFO] Notepad++ program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_obsstudio.Add_Checked({
    $global:install_obsstudio = 1
    "[$(TS)] AfterFORMAT [INFO] The program OBS Studio was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_obsstudio.Add_Unchecked({
    $global:install_obsstudio = 0
    "[$(TS)] AfterFORMAT [INFO] OBS Studio program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_putty.Add_Checked({
    $global:install_putty = 1
    "[$(TS)] AfterFORMAT [INFO] The program Putty was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_putty.Add_Unchecked({
    $global:install_putty = 0
    "[$(TS)] AfterFORMAT [INFO] Putty program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_red.Add_Checked({
    $global:install_red = 1
    "[$(TS)] AfterFORMAT [INFO] The program Remove Empty Directories was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_red.Add_Unchecked({
    $global:install_red = 0
    "[$(TS)] AfterFORMAT [INFO] Remove Empty Directories program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_samsungdex.Add_Checked({
    $global:install_samsungdex = 1
    "[$(TS)] AfterFORMAT [INFO] The program Samsung DEX was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_samsungdex.Add_Unchecked({
    $global:install_samsungdex = 0
    "[$(TS)] AfterFORMAT [INFO] Samsung DEX program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_samsungflow.Add_Checked({
    $global:install_samsungflow = 1
    "[$(TS)] AfterFORMAT [INFO] The program Samsung Flow was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_samsungflow.Add_Unchecked({
    $global:install_samsungflow = 0
    "[$(TS)] AfterFORMAT [INFO] Samsung Flow program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_soundswitch.Add_Checked({
    $global:install_soundswitch = 1
    "[$(TS)] AfterFORMAT [INFO] The program SoundSwitch was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_soundswitch.Add_Unchecked({
    $global:install_soundswitch = 0
    "[$(TS)] AfterFORMAT [INFO] SoundSwitch program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_spotify.Add_Checked({
    $global:install_spotify = 1
    "[$(TS)] AfterFORMAT [INFO] The program Spotify was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_spotify.Add_Unchecked({
    $global:install_spotify = 0
    "[$(TS)] AfterFORMAT [INFO] Spotify program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_synctrayzor.Add_Checked({
    $global:install_synctrayzor = 1
    "[$(TS)] AfterFORMAT [INFO] The program SyncTrayzor was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_synctrayzor.Add_Unchecked({
    $global:install_synctrayzor = 0
    "[$(TS)] AfterFORMAT [INFO] SyncTrayzor program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_teamspeak3.Add_Checked({
    $global:install_teamspeak3 = 1
    "[$(TS)] AfterFORMAT [INFO] The program TeamSpeak 3 was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_teamspeak3.Add_Unchecked({
    $global:install_teamspeak3 = 0
    "[$(TS)] AfterFORMAT [INFO] TeamSpeak 3 program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_teamviewer.Add_Checked({
    $global:install_teamviewer = 1
    "[$(TS)] AfterFORMAT [INFO] The program TeamViewer was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_teamviewer.Add_Unchecked({
    $global:install_teamviewer = 0
    "[$(TS)] AfterFORMAT [INFO] TeamViewer program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_totalcommander.Add_Checked({
    $global:install_totalcommander = 1
    "[$(TS)] AfterFORMAT [INFO] The program Total Commander was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_totalcommander.Add_Unchecked({
    $global:install_totalcommander = 0
    "[$(TS)] AfterFORMAT [INFO] Total Commander program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_VLC.Add_Checked({
    $global:install_VLC = 1
    "[$(TS)] AfterFORMAT [INFO] The program VLC media player was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_VLC.Add_Unchecked({
    $global:install_VLC = 0
    "[$(TS)] AfterFORMAT [INFO] VLC media player program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_winscp.Add_Checked({
    $global:install_winscp = 1
    "[$(TS)] AfterFORMAT [INFO] The program WinSCP was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_winscp.Add_Unchecked({
    $global:install_winscp = 0
    "[$(TS)] AfterFORMAT [INFO] WinSCP program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$change_autologon.Add_Checked({
    $global:autologon = 1
    "[$(TS)] AfterFORMAT [INFO] The auto login option is enabled" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$change_autologon.Add_Unchecked({
    $global:autologon = 0
    "[$(TS)] AfterFORMAT [INFO] Automatic login has been enabled" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$change_uac.Add_Checked({
    $global:uac = 1
    "[$(TS)] AfterFORMAT [INFO] User Account Control has been disabled" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$change_uac.Add_Unchecked({
    $global:uac = 0
    "[$(TS)] AfterFORMAT [INFO] User Account Control is enabled" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_touchportal.Add_Checked({
    $global:install_touchportal = 1
    "[$(TS)] AfterFORMAT [INFO] The program Touch Portal was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_touchportal.Add_Unchecked({
    $global:install_touchportal = 0
    "[$(TS)] AfterFORMAT [INFO] Touch Portal program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_adobecc.Add_Checked({
    $global:install_adobecc = 1
    "[$(TS)] AfterFORMAT [INFO] The program Adobe Creative Cloud was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_adobecc.Add_Unchecked({
    $global:install_adobecc = 0
    "[$(TS)] AfterFORMAT [INFO] Adobe Creative Cloud program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_iCUE.Add_Checked({
    $global:install_iCUE = 1
    "[$(TS)] AfterFORMAT [INFO] The program Corsair iCUE was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_iCUE.Add_Unchecked({
    $global:install_iCUE = 0
    "[$(TS)] AfterFORMAT [INFO] Corsair iCUE program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_sharex.Add_Checked({
    $global:install_sharex = 1
    "[$(TS)] AfterFORMAT [INFO] The program ShareX was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_sharex.Add_Unchecked({
    $global:install_sharex = 0
    "[$(TS)] AfterFORMAT [INFO] ShareX iCUE program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_virtualbox.Add_Checked({
    $global:install_virtualbox = 1
    "[$(TS)] AfterFORMAT [INFO] The program VirtualBox was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_virtualbox.Add_Unchecked({
    $global:app_virtualbox = 0
    "[$(TS)] AfterFORMAT [INFO] VirtualBox program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$app_firefox.Add_Checked({
    $global:install_firefox = 1
    "[$(TS)] AfterFORMAT [INFO] The program firefox was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 1
    $global:cho = 1
    })
$app_firefox.Add_Unchecked({
    $global:app_firefox = 0
    "[$(TS)] AfterFORMAT [INFO] firefox program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:win = 0
    $global:cho = 0
    })

$change_hibernate.Add_Checked({
    $global:hibernate = 1
    "[$(TS)] AfterFORMAT [INFO] The auto login option is enabled" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$change_hibernate.Add_Unchecked({
    $global:hibernate = 0
    "[$(TS)] AfterFORMAT [INFO] Automatic login has been enabled" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })


#$global:install_7zip
#$global:install_adguard
#$global:install_audacity
#$global:install_discord
#$global:install_displaycal
#$global:install_googlechrome
#$global:install_hashtab
#$global:install_keepass
#$global:install_klitecodecpack
#$global:install_logitechghub
#$global:install_mediainfo
#$global:install_msiafterburner
#$global:install_notepadPP
#$global:install_obsstudio
#$global:install_putty
#$global:install_red
#$global:install_samsungdex
#$global:install_samsungflow
#$global:install_soundswitch
#$global:install_spotify
#$global:install_synctrayzor
#$global:install_teamspeak3
#$global:install_teamviewer
#$global:install_totalcommander
#$global:install_VLC
#$global:install_winscp
#$global:install_touchportal
#$global:install_adobecc
#$global:install_iCUE
#$global:install_sharex
#$global:install_virtualbox


#$global:autologon
#$global:uac



#APPLY AND INSTALL
$apply.Add_click({
"[$(TS)] AfterFORMAT [INFO] Check installed programs: " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
#$global:installed = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select DisplayName | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
#$global:installed = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select DisplayName
#if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe) {
#    $global:installedwinget = Winget list | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
#    $global:installedwinget = Winget list
#}
#if (Test-Path "C:\ProgramData\chocolatey\choco.exe") {
#$global:installedchoco = choco list -localonly | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
#$global:installedchoco = choco list -localonly
#}


    Write-Host "`nInstallation in progress..."
    "[$(TS)] AfterFORMAT [INFO] Installation in progress..." | Out-File -FilePath $global:destination\AfterFORMAT.log -Append



    if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe) {
        Write-Host "You have the Winget installed"
        
    if ($global:win -eq 1) {
    "[$(TS)] AfterFORMAT [INFO] START Programs on this machine:" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:installed = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select DisplayName | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:installed = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select DisplayName
    $global:installedwinget = Winget list | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:installedwinget = Winget list
    "[$(TS)] AfterFORMAT [INFO] STOP Programs on this machine:" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append



            if ($global:install_7zip -eq 1) {



                $software = "7-Zip"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements 7zip.7zip | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_adguard -eq 1) {



                $software = "AdGuard"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements AdGuard.AdGuard | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_audacity -eq 1) {



                $software = "Audacity"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements Audacity.Audacity | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_discord -eq 1) {



                $software = "Discord"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements Discord.Discord | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_displaycal -eq 1) {



                $software = "DisplayCAL"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements FlorianHoech.DisplayCAL | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_googlechrome -eq 1) {



                $software = "Google Chrome"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements Google.Chrome | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_hashtab -eq 1) {



                $software = "HashTab"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements Implbits.HashTab | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_keepass -eq 1) {



                $software = "KeePass"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements DominikReichl.KeePass | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_klitecodecpack -eq 1) {



                $software = "K-Lite"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements CodecGuide.K-LiteCodecPack.Full | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_logitechghub -eq 1) {



                $software = "Logitech G HUB"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements Logitech.GHUB | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_mediainfo -eq 1) {



                $software = "MediaInfo"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements MediaArea.MediaInfo.GUI | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_notepadPP -eq 1) {



                $software = "Notepad"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements Notepad++.Notepad++ | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_obsstudio -eq 1) {



                $software = "OBS Studio"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements OBSProject.OBSStudio | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_putty -eq 1) {



                $software = "PuTTY"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements PuTTY.PuTTY | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_red -eq 1) {



                $software = "Remove Empty Directories"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements JonasJohn.RemoveEmptyDirectories | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_samsungdex -eq 1) {



                $software = "Samsung DeX"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements Samsung.DeX | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_samsungflow -eq 1) {


                
                $software = "Samsung Flow"
                if ($global:installed -match $software -or $global:installedwinget -match $software) { 
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    [void] [System.Windows.MessageBox]::Show( "Sorry... I don't have this package", "Script completed", "OK", "Information" )
                    "[$(TS)] AfterFORMAT [INFO] Sorry... I don't have this package '$software'" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    Start https://www.microsoft.com/en-us/p/samsung-flow/9nblggh5gb0m
                }



            }
            if ($global:install_soundswitch -eq 1) {



                $software = "SoundSwitch"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements AntoineAflalo.SoundSwitch | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            #if ($global:install_spotify -eq 1) {



                #$software = "Spotify"
                #if ($global:installed -match $software -or $global:installedwinget -match $software) {
	            #    Write-Host "'$software' is installed "
                #    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                #} else {
                #    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                #    Start-Process Powershell.exe -Credential $global:cred -NoNewWindow 'winget install -e --silent --accept-source-agreements --accept-package-agreements Spotify.Spotify' #-ArgumentList '-noprofile -command &{Start-Process Powershell -verb runas}'
                #    #winget install -e --silent --accept-source-agreements --accept-package-agreements Spotify.Spotify | Out-Host
                #    if($?) { Write-Host "Installed '$software'"}
                #}



            #}
            if ($global:install_synctrayzor -eq 1) {



                $software = "SyncTrayzor"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements SyncTrayzor.SyncTrayzor | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_teamspeak3 -eq 1) {



                $software = "TeamSpeak 3 Client"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements TeamSpeakSystems.TeamSpeakClient | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_teamviewer -eq 1) {



                $software = "TeamViewer"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements TeamViewer.TeamViewer | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_totalcommander -eq 1) {



                $software = "Total Commander"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements Ghisler.TotalCommander | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_VLC -eq 1) {



                $software = "VLC media player"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements VideoLAN.VLC | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_winscp -eq 1) {



                $software = "WinSCP"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements WinSCP.WinSCP | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_touchportal -eq 1) {



                $software = "Touch Portal"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements Rils.TouchPortal | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_iCUE -eq 1) {



                $software = "CORSAIR iCUE 4"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements Corsair.iCUE.4 | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_sharex -eq 1) {



                $software = "ShareX"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements ShareX.ShareX | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_virtualbox -eq 1) {



                $software = "Oracle VM VirtualBox"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements Oracle.VirtualBox | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
                }



            }
            if ($global:install_firefox -eq 1) {



                $software = "Firefox"
                if ($global:installed -match $software -or $global:installedwinget -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    winget install -e --silent --accept-source-agreements --accept-package-agreements Mozilla.Firefox | Out-Host
                    if($?) { "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append}
                }



            }



            #$logs = Get-Content %LOCALAPPDATA%\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\DiagOutputDir\*.log
            #Add-Content -Path $global:destination\AfterFORMAT.log -Value $logs
            #Remove-Item %LOCALAPPDATA%\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\DiagOutputDir\*.log -Force
            #Rename-Item %LOCALAPPDATA%\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\DiagOutputDir\*.log -NewName {$_.name -replace "WinGet-","OLD_WinGet-"} 



    }} else {
        Write-Host "Please install first Winget"
    }



    if (Test-Path "C:\ProgramData\chocolatey\choco.exe") {
        Write-Host "You have the Chocolatey installed"
        
    if ($global:cho -eq 1) {
    "[$(TS)] AfterFORMAT [INFO] START Programs on this machine:" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:installed = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select DisplayName | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:installed = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select DisplayName
    $global:installedchoco = choco list -localonly | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $global:installedchoco = choco list -localonly
    "[$(TS)] AfterFORMAT [INFO] STOP Programs on this machine:" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append


        
        if ($global:install_msiafterburner -eq 1) {



            $software = "MSI Afterburner"
            if ($global:installed -match $software -or $global:installedchoco -match 'msiafterburner') {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
            } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    choco install msiafterburner --yes --force | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
            }



        }
        if ($global:install_adobecc -eq 1) {



            $software = "Adobe Creative Cloud"
            if ($global:installed -match $software -or $global:installedchoco -match 'adobe-creative-cloud') {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
            } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    choco install adobe-creative-cloud --yes --force | Out-Host # --ignore-checksums
                    if($?) { Write-Host "Installed '$software'"}
            }



        }
        if ($global:install_spotify -eq 1) {



            $software = "Spotify"
            if ($global:installed -match $software -or $global:installedchoco -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
            } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
                    choco install spotify --yes --force | Out-Host
                    if($?) { Write-Host "Installed '$software'"}
            }



        }



    #$logs = Get-Content C:\ProgramData\chocolatey\logs\chocolatey.log
    #Add-Content -Path $global:destination\AfterFORMAT.log -Value $logs
    #Remove-Item C:\ProgramData\chocolatey\logs\*.log -Force
    #Rename-Item C:\ProgramData\chocolatey\logs\chocolatey.log -NewName C:\ProgramData\chocolatey\logs\chocolatey_$(TS).log



    }} else {
        Write-Host "Please install first Chocolatey"
    }



    if ($global:autologon -eq 1) {
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PasswordLess\Device" -Name "DevicePasswordLessBuildVersion" -Value 0
        Write-Host "Auto log in enable. Go to netplwiz"
        "[$(TS)] AfterFORMAT [INFO] Auto log in enable. Go to netplwiz" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    }



    if ($global:uac -eq 1) {
        Set-ItemProperty -Path REGISTRY::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name ConsentPromptBehaviorAdmin -Value 0 #OR 5
        Write-Host "Change UAC settings to 5"
        "[$(TS)] AfterFORMAT [INFO] Change UAC settings to 0" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    }



    if ($global:hibernate -eq 1) {
        cmd.exe /c 'powercfg.exe /hibernate off'
        Write-Host "Hibernate off"
        "[$(TS)] AfterFORMAT [INFO] Change UAC settings to 0" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    }



    Write-Host "FINISH task"
    Write-Host "`nLogs choco : C:\ProgramData\chocolatey\logs\" 
    Write-Host "`nLogs winget: %LOCALAPPDATA%\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\DiagOutputDir\`n" 
})



#CLOSE FORM CLICK
$close_window.Add_click({
    "[$(TS)] AfterFORMAT [STOP] STOP AfterFORMAT " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $Form.Close()
})



#Show Form
$Form.ShowDialog() | out-null