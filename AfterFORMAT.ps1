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
        
        Title="AfterFORMAT" Height="500" Width="725">
    <Grid Background="#FF7D7D7D">
        <Button Name="InstallApps" Content="Install Apps" HorizontalAlignment="Left" Margin="25,25,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="Close" Content="Close" HorizontalAlignment="Left" Margin="550,25,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <TextBox Name="hostname" HorizontalAlignment="Left" Margin="175,75,0,0" TextWrapping="Wrap" Text="Tape here" VerticalAlignment="Top" Width="125" Height="25" FontWeight="Bold" FontStyle="Italic" FontSize="14"/>
        <Button Name="ApplyHostName" Content="Change HostName" HorizontalAlignment="Left" Margin="325,75,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold" Foreground="Red"/>
        <Button Name="downloadRedistAllInOne" Content="Get Redist AllInOne" HorizontalAlignment="Left" Margin="25,125,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="OpenNinite" Content="Open Ninite" HorizontalAlignment="Left" Margin="325,25,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="downloadDirectX" Content="Get DirectX" HorizontalAlignment="Left" Margin="175,125,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="InstallGamesLaunchers" Content="Install Games" HorizontalAlignment="Left" Margin="175,25,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="enableNFS" Content="Enable NFS" HorizontalAlignment="Left" Margin="325,125,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Label Name="L1" Content="Change hostname to:" HorizontalAlignment="Left" Height="25" Margin="25,75,0,0" VerticalAlignment="Top" Width="145" FontWeight="Bold"/>

    </Grid>
</Window>
"@

#==========

#CHECK WINGET
Write-Host "Checking winget..."
if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe){
    'Winget Already Installed'
}  
else{
    # Installing winget from the Microsoft Store
	Write-Host "Winget not found, installing it now."
	Start-Process "ms-appinstaller:?source=https://aka.ms/getwinget"
	$nid = (Get-Process AppInstaller).Id
	Wait-Process -Id $nid
	Write-Host Winget Installed
}

    Clear-Host

#Read XAML
$reader=(New-Object System.Xml.XmlNodeReader $xaml) 
try{$Form=[Windows.Markup.XamlReader]::Load( $reader )}
catch{Write-Host "Unable to load Windows.Markup.XamlReader"; exit}

# Store Form Objects In PowerShell
$xaml.SelectNodes("//*[@Name]") | ForEach-Object {Set-Variable -Name ($_.Name) -Value $Form.FindName($_.Name)}

#LINKS
$MVC = "https://www.techpowerup.com/download/visual-c-redistributable-runtime-package-all-in-one/"
$MDX = "https://www.microsoft.com/pl-pl/download/details.aspx?id=35"
$Ninite = "https://ninite.com/"

#SCRIPT PATH
$destination = $MyInvocation.MyCommand.Path
$scriptname = $MyInvocation.MyCommand.Name
$destination = $destination.Replace($scriptname,'')

#$ApplyHostName.Add_click({
#DO...
#})

#CLOSE APP
$Close.Add_click({
    Clear-Host
    $Form.Close()
})

$InstallApps.Add_click({
    
    Write-Host "Installing 7zip..."
    winget install -e 7zip.7zip | Out-Host
    if($?) { Write-Host "Installed 7zip"}
    Write-Host "Installing AdGuard..."
    winget install -a AdGuard.AdGuard | Out-Host
    if($?) { Write-Host "Installed AdGuard"}
    Write-Host "Installing Audacity..."
    winget install -a Audacity.Audacity | Out-Host
    if($?) { Write-Host "Installed Audacity"}
    Write-Host "Installing SoundBlasterCommand..."
    winget install -a CreativeTechnology.SoundBlasterCommand | Out-Host
    if($?) { Write-Host "Installed SoundBlasterCommand"}
    Write-Host "Installing Discord..."
    winget install -a Discord.Discord | Out-Host
    if($?) { Write-Host "Installed Discord"}
    Write-Host "Installing DisplayCAL..."
    winget install -a FlorianHoech.DisplayCAL | Out-Host
    if($?) { Write-Host "Installed DisplayCAL"}
    Write-Host "Installing Java JRE..."
    winget install -a EclipseAdoptium.TemurinJRE.8 | Out-Host
    if($?) { Write-Host "Installed Java JRE"}
    Write-Host "Installing Google Chrome..."
    winget install -a Google.Chrome | Out-Host
    if($?) { Write-Host "Installed Google Chrome"}
    Write-Host "Installing HashTab..."
    winget install -a Implbits.HashTab | Out-Host
    if($?) { Write-Host "Installed HashTab"}
    Write-Host "Installing KeePass..."
    winget install -a DominikReichl.KeePass | Out-Host
    if($?) { Write-Host "Installed KeePass"}
    Write-Host "Installing K-LiteCodecPack..."
    winget install -a CodecGuide.K-LiteCodecPack.Full | Out-Host
    if($?) { Write-Host "Installed K-LiteCodecPack"}
    Write-Host "Installing G HUB..."
    winget install -a Logitech.GHUB | Out-Host
    if($?) { Write-Host "Installed G HUB"}
    Write-Host "Installing MediaInfo..."
    winget install -a MediaArea.MediaInfo.GUI | Out-Host
    if($?) { Write-Host "Installed MediaInfo"}
    Write-Host "Installing Notepad++..."
    winget install -a Notepad++.Notepad++ | Out-Host
    if($?) { Write-Host "Installed Notepad++"}
    Write-Host "Installing OBS Studio..."
    winget install -a OBSProject.OBSStudio | Out-Host
    if($?) { Write-Host "Installed OBS Studio"}
    Write-Host "Installing VirtualBox..."
    winget install -a Oracle.VirtualBox | Out-Host
    if($?) { Write-Host "Installed VirtualBox"}
    Write-Host "Installing PuTTY..."
    winget install -a PuTTY.PuTTY | Out-Host
    if($?) { Write-Host "Installed PuTTY"}
    Write-Host "Installing RemoveEmptyDirectories..."
    winget install -a JonasJohn.RemoveEmptyDirectories | Out-Host
    if($?) { Write-Host "Installed RemoveEmptyDirectories"}
    Write-Host "Installing Samsung DEX..."
    winget install -a Samsung.DeX | Out-Host
    if($?) { Write-Host "Installed Samsung DEX"}
    Write-Host "Installing SoundSwitch..."
    winget install -a AntoineAflalo.SoundSwitch | Out-Host
    if($?) { Write-Host "Installed SoundSwitch"}
    Write-Host "Installing Spotify..."
    winget install -a Spotify.Spotify | Out-Host
    if($?) { Write-Host "Installed Spotify"}
    Write-Host "Installing Syncthing..."
    winget install -a SyncTrayzor.SyncTrayzor | Out-Host
    if($?) { Write-Host "Installed Syncthing"}
    Write-Host "Installing Team Speak..."
    winget install -a TeamSpeakSystems.TeamSpeakClient | Out-Host
    if($?) { Write-Host "Installed Team Speak"}
    Write-Host "Installing Team Viewer..."
    winget install -a TeamViewer.TeamViewer | Out-Host
    if($?) { Write-Host "Installed Team Viewer"}
    Write-Host "Installing Total Commander..."
    winget install -a Ghisler.TotalCommander | Out-Host
    if($?) { Write-Host "Installed Total Commander"}
    Write-Host "Installing VLC..."
    winget install -a VideoLAN.VLC | Out-Host
    if($?) { Write-Host "Installed VLC"}
    Write-Host "Installing WinSCP..."
    winget install -a WinSCP.WinSCP | Out-Host
    if($?) { Write-Host "Installed WinSCP"}
    [void] [System.Windows.MessageBox]::Show( "I will not be able to install everything. But I can open the pages for you :D", "Script completed", "OK", "Information" )
    
})

$InstallGamesLaunchers.Add_click({
    Write-Host "Installing Bethesda..."
    winget install -e Bethesda.Launcher | Out-Host
    if($?) { Write-Host "Installed Bethesda" }
    Write-Host "Installing EA Desktop..."
    winget install -e ElectronicArts.EADesktop | Out-Host
    if($?) { Write-Host "Installed EA Desktop" }
    Write-Host "Installing Epic Games Launcher..."
    winget install -e EpicGames.EpicGamesLauncher | Out-Host
    if($?) { Write-Host "Installed Epic Games Launcher" }
    Write-Host "Installing GOG Galaxy..."
    winget install -e GOG.Galaxy | Out-Host
    if($?) { Write-Host "Installed GOG Galaxy" }
    Write-Host "Installing Minecraft Launcher..."
    winget install -e Mojang.MinecraftLauncher | Out-Host
    if($?) { Write-Host "Installed Minecraft Launcher" }
    Write-Host "Installing Steam..."
    winget install -e Valve.Steam | Out-Host
    if($?) { Write-Host "Installed Steam" }
    Write-Host "Installing Ubisoft Connect..."
    winget install -e Ubisoft.Connect | Out-Host
    if($?) { Write-Host "Installed Ubisoft Connect" }
    Write-Host "Installing Wargaming Game Center..."
    winget install -e Wargaming.GameCenter | Out-Host
    if($?) { Write-Host "Installed Wargaming Game Center" }
    [void] [System.Windows.MessageBox]::Show( "I will not be able to install everything. But I can open the pages for you :D", "Script completed", "OK", "Information" )
})

$ApplyHostName.Add_click({

    $hostnameValue = $hostname.Text
    #Write-Host "New name is "  $hostnameValue
    if($hostnameValue -contains "WRITE HERE HOSTNAME"){
        Write-Host "Wrong hostname!!!" $hostnameValue
    }else
    {
        Rename-Computer -NewName $hostname
        Write-Host "Change hostname to " $hostname " please reboot your PC"
        [void] [System.Windows.MessageBox]::Show( "Change hostname to " + $hostname + " please reboot your PC", "Script completed", "OK", "Information" )
    }

})

$downloadRedistAllInOne.Add_click({
    Write-Host "Open website..."
    [void] [System.Windows.MessageBox]::Show( "Please click, download and install", "Script completed", "OK", "Information" )
    Start $MVC
})
$downloadDirectX.Add_click({
    Write-Host "Open website..."
    [void] [System.Windows.MessageBox]::Show( "Please click, download and install", "Script completed", "OK", "Information" )
    Start $MDX
})

$OpenNinite.Add_click({
    Write-Host "Open Ninite.com"
    [void] [System.Windows.MessageBox]::Show( "Please click, choose what you need, download and install", "Script completed", "OK", "Information" )
    Start $Ninite
})

$enableNFS.Add_Click({
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


#==========



#==========

#Show Form
$Form.ShowDialog() | out-null