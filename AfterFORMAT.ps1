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

        Title="AfterFORMAT" Height="525" Width="750" MinWidth="750" MinHeight="500" MaxWidth="750" MaxHeight="525">
    <Grid Background="#FF7D7D7D" VerticalAlignment="Stretch" HorizontalAlignment="Stretch">
        
        <Button Name="close_window" Content="Close" HorizontalAlignment="Left" Margin="590,10,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="install_winget" Content="Install WINGET" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="install_chocolatey" Content="Install CHOCOLATEY" HorizontalAlignment="Left" Margin="145,10,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="open_ninite" Content="Open ninite.com" HorizontalAlignment="Left" Margin="280,10,0,0" VerticalAlignment="Top" Height="25" Width="124" FontWeight="Bold"/>
        <Button Name="get_redist" Content="Get Visual C++" HorizontalAlignment="Left" Margin="10,45,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="get_directx" Content="Get DirectX" HorizontalAlignment="Left" Margin="145,45,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="enable_nfs" Content="Enable NFS" HorizontalAlignment="Left" Margin="280,45,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="apply_hostname" Content="Apply hostname" HorizontalAlignment="Left" Margin="514,183,0,0" VerticalAlignment="Top" Height="24" Width="126" FontWeight="Bold"/>
        <Button Name="apply" Content="Apply" HorizontalAlignment="Center" Margin="0,445,0,0" VerticalAlignment="Top" Width="125" Height="25" FontWeight="Bold"/>

        <Button Name="open_ninitev1" Content="v1" HorizontalAlignment="Left" Margin="415,10,0,0" VerticalAlignment="Top" Height="25" Width="25" FontWeight="Bold"/>
        <Button Name="open_ninitev2" Content="v2" HorizontalAlignment="Left" Margin="450,10,0,0" VerticalAlignment="Top" Height="25" Width="25" FontWeight="Bold"/>
        <Button Name="install_gl" Content="Games Launchers" HorizontalAlignment="Left" Margin="415,45,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        
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

        <TextBox Name="set_hostname" HorizontalAlignment="Left" Height="26" Margin="477,150,0,0" TextWrapping="Wrap" Text="hostname" VerticalAlignment="Top" Width="200" FontSize="14" FontWeight="Bold" TextAlignment="Center" MaxLength="20"/>

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



#Clear-Host
#SCRIPT PATH & NAME
Write-Host "AfterFORMAT by obeliksgall`nhttps://github.com/obeliksgall/AfterFORMAT`n"
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



$global:autologon = 0
$global:uac = 0
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



$global:newhostname   =  $env:COMPUTERNAME
$global:set_hostname.text  =  $global:newhostname



$global:installed = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select DisplayName | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
$global:installed = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select DisplayName
"[$(TS)] AfterFORMAT [INFO] Set default global variables " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append



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

        New-Item -Path $global:destination -Name $global:chocolateyinstall -ItemType File -Value $global:chocolatey.content -Force
        #& $global:destination$global:chocolateyinstall
        & $global:destination$global:chocolateyinstall | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
        Remove-Item -Path $global:destination$global:chocolateyinstall -Force

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
        #Rename-Computer -NewName $hostname
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
    #TO DO INSTALL game launchers
})



$app_7zip.Add_Checked({
    $global:install_7zip = 1
    "[$(TS)] AfterFORMAT [INFO] The program 7-Zip was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_7zip.Add_Unchecked({
    $global:install_7zip = 0
    "[$(TS)] AfterFORMAT [INFO] 7-Zip program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_adguard.Add_Checked({
    $global:install_adguard = 1
    "[$(TS)] AfterFORMAT [INFO] The program Adguard was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_adguard.Add_Unchecked({
    $global:install_adguard = 0
    "[$(TS)] AfterFORMAT [INFO] Adguard program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_audacity.Add_Checked({
    $global:install_audacity = 1
    "[$(TS)] AfterFORMAT [INFO] The program Audacity was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_audacity.Add_Unchecked({
    $global:install_audacity = 0
    "[$(TS)] AfterFORMAT [INFO] Audacity program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_discord.Add_Checked({
    $global:install_discord = 1
    "[$(TS)] AfterFORMAT [INFO] The program Discord was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_discord.Add_Unchecked({
    $global:install_discord = 0
    "[$(TS)] AfterFORMAT [INFO] Discord program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_displaycal.Add_Checked({
    $global:install_displaycal = 1
    "[$(TS)] AfterFORMAT [INFO] The program DisplayCAL was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_displaycal.Add_Unchecked({
    $global:install_displaycal = 0
    "[$(TS)] AfterFORMAT [INFO] DisplayCAL program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_googlechrome.Add_Checked({
    $global:install_googlechrome = 1
    "[$(TS)] AfterFORMAT [INFO] The program Google Chrome was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_googlechrome.Add_Unchecked({
    $global:install_googlechrome = 0
    "[$(TS)] AfterFORMAT [INFO] Google Chrome program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_hashtab.Add_Checked({
    $global:install_hashtab = 1
    "[$(TS)] AfterFORMAT [INFO] The program HashTab was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_hashtab.Add_Unchecked({
    $global:install_hashtab = 0
    "[$(TS)] AfterFORMAT [INFO] HashTab program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_keepass.Add_Checked({
    $global:install_keepass = 1
    "[$(TS)] AfterFORMAT [INFO] The program Keepass was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_keepass.Add_Unchecked({
    $global:install_keepass = 0
    "[$(TS)] AfterFORMAT [INFO] Keepass program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_klitecodecpack.Add_Checked({
    $global:install_klitecodecpack = 1
    "[$(TS)] AfterFORMAT [INFO] The program K-Lite Codec Pack was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_klitecodecpack.Add_Unchecked({
    $global:install_klitecodecpack = 0
    "[$(TS)] AfterFORMAT [INFO] K-Lite Codec Pack program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_logitechghub.Add_Checked({
    $global:install_logitechghub = 1
    "[$(TS)] AfterFORMAT [INFO] The program Logitech G HUB was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_logitechghub.Add_Unchecked({
    $global:install_logitechghub = 0
    "[$(TS)] AfterFORMAT [INFO] Logitech G HUB program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_mediainfo.Add_Checked({
    $global:install_mediainfo = 1
    "[$(TS)] AfterFORMAT [INFO] The program MediaInfo was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_mediainfo.Add_Unchecked({
    $global:install_mediainfo = 0
    "[$(TS)] AfterFORMAT [INFO] MediaInfo program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_msiafterburner.Add_Checked({
    $global:install_msiafterburner = 1
    "[$(TS)] AfterFORMAT [INFO] The program MSI Afterburner was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_msiafterburner.Add_Unchecked({
    $global:install_msiafterburner = 0
    "[$(TS)] AfterFORMAT [INFO] MSI Afterburner program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_notepadPP.Add_Checked({
    $global:install_notepadPP = 1
    "[$(TS)] AfterFORMAT [INFO] The program Notepad++ was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_notepadPP.Add_Unchecked({
    $global:install_notepadPP = 0
    "[$(TS)] AfterFORMAT [INFO] Notepad++ program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_obsstudio.Add_Checked({
    $global:install_obsstudio = 1
    "[$(TS)] AfterFORMAT [INFO] The program OBS Studio was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_obsstudio.Add_Unchecked({
    $global:install_obsstudio = 0
    "[$(TS)] AfterFORMAT [INFO] OBS Studio program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_putty.Add_Checked({
    $global:install_putty = 1
    "[$(TS)] AfterFORMAT [INFO] The program Putty was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_putty.Add_Unchecked({
    $global:install_putty = 0
    "[$(TS)] AfterFORMAT [INFO] Putty program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_red.Add_Checked({
    $global:install_red = 1
    "[$(TS)] AfterFORMAT [INFO] The program Remove Empty Directories was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_red.Add_Unchecked({
    $global:install_red = 0
    "[$(TS)] AfterFORMAT [INFO] Remove Empty Directories program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_samsungdex.Add_Checked({
    $global:install_samsungdex = 1
    "[$(TS)] AfterFORMAT [INFO] The program Samsung DEX was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_samsungdex.Add_Unchecked({
    $global:install_samsungdex = 0
    "[$(TS)] AfterFORMAT [INFO] Samsung DEX program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_samsungflow.Add_Checked({
    $global:install_samsungflow = 1
    "[$(TS)] AfterFORMAT [INFO] The program Samsung Flow was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_samsungflow.Add_Unchecked({
    $global:install_samsungflow = 0
    "[$(TS)] AfterFORMAT [INFO] Samsung Flow program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_soundswitch.Add_Checked({
    $global:install_soundswitch = 1
    "[$(TS)] AfterFORMAT [INFO] The program SoundSwitch was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_soundswitch.Add_Unchecked({
    $global:install_soundswitch = 0
    "[$(TS)] AfterFORMAT [INFO] SoundSwitch program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_spotify.Add_Checked({
    $global:install_spotify = 1
    "[$(TS)] AfterFORMAT [INFO] The program Spotify was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_spotify.Add_Unchecked({
    $global:install_spotify = 0
    "[$(TS)] AfterFORMAT [INFO] Spotify program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_synctrayzor.Add_Checked({
    $global:install_synctrayzor = 1
    "[$(TS)] AfterFORMAT [INFO] The program SyncTrayzor was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_synctrayzor.Add_Unchecked({
    $global:install_synctrayzor = 0
    "[$(TS)] AfterFORMAT [INFO] SyncTrayzor program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_teamspeak3.Add_Checked({
    $global:install_teamspeak3 = 1
    "[$(TS)] AfterFORMAT [INFO] The program TeamSpeak 3 was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_teamspeak3.Add_Unchecked({
    $global:install_teamspeak3 = 0
    "[$(TS)] AfterFORMAT [INFO] TeamSpeak 3 program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_teamviewer.Add_Checked({
    $global:install_teamviewer = 1
    "[$(TS)] AfterFORMAT [INFO] The program TeamViewer was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_teamviewer.Add_Unchecked({
    $global:install_teamviewer = 0
    "[$(TS)] AfterFORMAT [INFO] TeamViewer program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_totalcommander.Add_Checked({
    $global:install_totalcommander = 1
    "[$(TS)] AfterFORMAT [INFO] The program Total Commander was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_totalcommander.Add_Unchecked({
    $global:install_totalcommander = 0
    "[$(TS)] AfterFORMAT [INFO] Total Commander program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_VLC.Add_Checked({
    $global:install_VLC = 1
    "[$(TS)] AfterFORMAT [INFO] The program VLC media player was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_VLC.Add_Unchecked({
    $global:install_VLC = 0
    "[$(TS)] AfterFORMAT [INFO] VLC media player program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_winscp.Add_Checked({
    $global:install_winscp = 1
    "[$(TS)] AfterFORMAT [INFO] The program WinSCP was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_winscp.Add_Unchecked({
    $global:install_winscp = 0
    "[$(TS)] AfterFORMAT [INFO] WinSCP program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
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
    })
$app_touchportal.Add_Unchecked({
    $global:install_touchportal = 0
    "[$(TS)] AfterFORMAT [INFO] Touch Portal program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_adobecc.Add_Checked({
    $global:install_adobecc = 1
    "[$(TS)] AfterFORMAT [INFO] The program Adobe Creative Cloud was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_adobecc.Add_Unchecked({
    $global:install_adobecc = 0
    "[$(TS)] AfterFORMAT [INFO] Adobe Creative Cloud program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_iCUE.Add_Checked({
    $global:install_iCUE = 1
    "[$(TS)] AfterFORMAT [INFO] The program Corsair iCUE was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_iCUE.Add_Unchecked({
    $global:install_iCUE = 0
    "[$(TS)] AfterFORMAT [INFO] Corsair iCUE program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })

$app_sharex.Add_Checked({
    $global:install_sharex = 1
    "[$(TS)] AfterFORMAT [INFO] The program ShareX was selected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    })
$app_sharex.Add_Unchecked({
    $global:install_sharex = 0
    "[$(TS)] AfterFORMAT [INFO] ShareX iCUE program has been deselected" | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
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

#$global:autologon
#$global:uac



#APPLY AND INSTALL
$apply.Add_click({


    Write-Host "`nInstallation in progress..."
    "[$(TS)] AfterFORMAT [INFO] Installation in progress..." | Out-File -FilePath $global:destination\AfterFORMAT.log -Append

    "[$(TS)] AfterFORMAT [INFO] Check installed programs: " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append



    if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe) {
        Write-Host "You have the Winget installed"
            if ($global:install_7zip -eq 1) {



                $software = "7-Zip"
                if ($global:installed -match $software) {
	                Write-Host "'$software' is installed "
                    "[$(TS)] AfterFORMAT [INFO] '$software' is installed " | Out-File -FilePath $destination\AfterFORMAT.log -Append
                } else {
                    "[$(TS)] AfterFORMAT [INFO] '$software' NOT is installed " | Out-File -FilePath $destination\AfterFORMAT.log -Append
                    winget install -e 7zip.7zip | Out-Host
                    if($?) { Write-Host "Installed 7zip"}
                }



            }
            if ($global:install_adguard -eq 1) {
            }
            if ($global:install_audacity -eq 1) {
            }
            if ($global:install_discord -eq 1) {
            }
            if ($global:install_displaycal -eq 1) {
            }
            if ($global:install_googlechrome -eq 1) {
            }
            if ($global:install_hashtab -eq 1) {
            }
            if ($global:install_keepass -eq 1) {
            }
            if ($global:install_klitecodecpack -eq 1) {
            }
            if ($global:install_logitechghub -eq 1) {
            }
            if ($global:install_mediainfo -eq 1) {
            }
            if ($global:install_msiafterburner -eq 1) {
            }
            if ($global:install_notepadPP -eq 1) {
            }
            if ($global:install_obsstudio -eq 1) {
            }
            if ($global:install_putty -eq 1) {
            }
            if ($global:install_red -eq 1) {
            }
            if ($global:install_samsungdex -eq 1) {
            }
            if ($global:install_samsungflow -eq 1) {
            }
            if ($global:install_soundswitch -eq 1) {
            }
            if ($global:install_spotify -eq 1) {
            }
            if ($global:install_synctrayzor -eq 1) {
            }
            if ($global:install_teamspeak3 -eq 1) {
            }
            if ($global:install_teamviewer -eq 1) {
            }
            if ($global:install_totalcommander -eq 1) {
            }
            if ($global:install_VLC -eq 1) {
            }
            if ($global:install_winscp -eq 1) {
            }
            if ($global:install_touchportal -eq 1) {
            }
            if ($global:install_adobecc -eq 1) {
            }
            if ($global:install_iCUE -eq 1) {
            }
            if ($global:install_sharex -eq 1) {
            }
    } else {
        Write-Host "Please install first Winget"
    }



    if (Test-Path "C:\ProgramData\chocolatey\choco.exe") {
        Write-Host "You have the Chocolatey installed"
    } else {
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
})



#CLOSE FORM CLICK
$close_window.Add_click({
    "[$(TS)] AfterFORMAT [STOP] STOP AfterFORMAT " | Out-File -FilePath $global:destination\AfterFORMAT.log -Append
    $Form.Close()
})



#Show Form
$Form.ShowDialog() | out-null