# SOURCE: https://github.com/ChrisTitusTech/win10script
# SOURCE: https://docs.microsoft.com/en-us/powershell/

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
        <!-- <CheckBox Name="change_hostname" Content="Change hostname?" HorizontalAlignment="Left" Margin="502,100,0,0" VerticalAlignment="Top" Width="150" Height="15" FontSize="13" FontWeight="Normal"/> -->
        
        <Separator Height="10" Margin="10,425,10,0" VerticalAlignment="Top" Background="White"/>
        <Separator Height="10" Margin="10,80,10,0" VerticalAlignment="Top" Background="White"/>
        
        <TextBox Name="set_hostname" HorizontalAlignment="Left" Height="25" Margin="477,125,0,0" TextWrapping="Wrap" Text="hostname" VerticalAlignment="Top" Width="200" FontSize="14" FontWeight="Bold" TextAlignment="Center"/>

    </Grid>
</Window>
"@

#IsReadOnly="True" to read only textbox
#$set_hostname.ReadOnly = $false;

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
$scriptname = $MyInvocation.MyCommand.Name
$destination = $destination.Replace($scriptname,'')

#$ApplyHostName.Add_click({
#DO...
#})

$global:hostnameV = $env:COMPUTERNAME
$set_hostname.text = $global:hostnameV
$global:install_7zip = 0

$apply.Add_click({
    Write-Host "Tutaj instaluję programy zaznaczone checkboxem :D"
    Write-Host $global:install_7zip
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
    Clear-Host
    $Form.Close()
})

$enable_nfs.Add_Click({
    Enable-WindowsOptionalFeature -Online -FeatureName "ServicesForNFS-ClientOnly" -All
    Enable-WindowsOptionalFeature -Online -FeatureName "ClientForNFS-Infrastructure" -All
    Enable-WindowsOptionalFeature -Online -FeatureName "NFS-Administration" -All
    nfsadmin client stop
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\ClientForNFS\CurrentVersion\Default" -Name "AnonymousUID" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\ClientForNFS\CurrentVersion\Default" -Name "AnonymousGID" -Type DWord -Value 0
    nfsadmin client start
    nfsadmin client localhost config fileaccess=755 SecFlavors=+sys -krb5 -krb5i
    Write-Host "NFS is enable"
})

$get_directx.Add_click({
    Write-Host "Open website with DirectX End-User Runtime"
    [void] [System.Windows.MessageBox]::Show( "Please click, download and install", "Script completed", "OK", "Information" )
    Start $urlMDX
})

$get_redist.Add_click({
    Write-Host "Open website with Visual C++ Redistributable Runtimes All-in-One"
    [void] [System.Windows.MessageBox]::Show( "Please click, download and install", "Script completed", "OK", "Information" )
    Start $urlMVC
})

$install_chocolatey.Add_click({
    Write-Host "Tutaj instaluję chocolatey"

    $chocolatey = Invoke-WebRequest -Uri $urlChocolatey -UserAgent 'Trident' -UseBasicParsing
    $chocolatey.Content

    #Write-Host $result
    #add code to install...

})

$install_winget.Add_click({
Write-Host "Checking winget..."
if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe){
    Write-Host "Winget Already Installed"
}  
else{
	Write-Host "Winget not found, installing it now."
	Start-Process "ms-appinstaller:?source=https://aka.ms/getwinget"
	$nid = (Get-Process AppInstaller).Id
	Wait-Process -Id $nid
	Write-Host "Winget Installed"
}
})

$open_ninite.Add_click({
    Write-Host "Open Ninite.com"
    [void] [System.Windows.MessageBox]::Show( "Please click, choose what you need, download and install", "Script completed", "OK", "Information" )
    Start $urlNinite
})

$apply_hostname.Add_click({
#Write-Host $set_hostname
#Write-Host $global:hostnameV
    if ($set_hostname.text -eq $global:hostnameV){
        Write-Host "hostname cannot be the same"
    }else{
        #Write-Host "now is ok"
        $hostnameValue = $set_hostname.text
        Rename-Computer -NewName $hostnameValue
        Write-Host "Change hostname to " $hostnameValue " please reboot your PC"
        [void] [System.Windows.MessageBox]::Show( "Change hostname to " + $hostname + " please reboot your PC", "Script completed", "OK", "Information" )
    }
})

#$change_hostname.Add_Checked({
    #Write-Host Batman
    #$set_hostname.Enabled = $true
    #$set_hostname.ReadOnly = $true;
    #$set_hostname.Attribute.Add("ReadOnly")
    #If ($change_hostname.Checked) {
    #    $set_hostname.text = 'CHECKED'
    #} Else {
    #    $set_hostname.text = 'UNCHECKED'
    #}
#})
#$change_hostname.Add_Unchecked({
    Write-Host Robin
    #$set_hostname.Enabled = $false
    #$set_hostname.ReadOnly = $false;
    #$set_hostname.Attribute.Add("ReadOnly")
    #If ($change_hostname.Unchecked) {
    #    $set_hostname.text = 'UNCHECKED'

    #} Else {
    #    $set_hostname.text = 'CHECKED'
    #}
#})

$app_7zip.Add_Checked({
    $global:install_7zip = 1
    Write-Host $install_7zip
})
$app_7zip.Add_Unchecked({
    $global:install_7zip = 0
    Write-Host $install_7zip
})




#$InstallApps.Add_click({
#    Write-Host "Installing 7zip..."
#    winget install -e 7zip.7zip | Out-Host
#    if($?) { Write-Host "Installed 7zip"}
#    [void] [System.Windows.MessageBox]::Show( "I will not be able to install everything. But I can open the pages for you :D", "Script completed", "OK", "Information" )
#})

#$InstallGamesLaunchers.Add_click({
#    Write-Host "Installing Bethesda..."
#    winget install -e Bethesda.Launcher | Out-Host
#    if($?) { Write-Host "Installed Bethesda" }
#    [void] [System.Windows.MessageBox]::Show( "I will not be able to install everything. But I can open the pages for you :D", "Script completed", "OK", "Information" )
#})

#$ApplyHostName.Add_click({
#    $hostnameValue = $hostname.Text
#    #Write-Host "New name is "  $hostnameValue
#    if($hostnameValue -contains "WRITE HERE HOSTNAME"){
#        Write-Host "Wrong hostname!!!" $hostnameValue
#    }else
#    {
#        Rename-Computer -NewName $hostname
#        Write-Host "Change hostname to " $hostname " please reboot your PC"
#        [void] [System.Windows.MessageBox]::Show( "Change hostname to " + $hostname + " please reboot your PC", "Script completed", "OK", "Information" )
#    }
#})

#   !!!Please do not insert code below!!!

#Show Form
$Form.ShowDialog() | out-null