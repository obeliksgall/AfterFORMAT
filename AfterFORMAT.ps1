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
        
        <Button Name="apply" Content="Apply" HorizontalAlignment="Center" Margin="0,445,0,0" VerticalAlignment="Top" Width="125" Height="25" FontWeight="Bold"/>
        <Button Name="apply_hostname" Content="Apply hostname" HorizontalAlignment="Left" Margin="514,183,0,0" VerticalAlignment="Top" Height="24" Width="126" FontWeight="Bold"/>
        <Button Name="close_window" Content="Close" HorizontalAlignment="Left" Margin="590,10,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="enable_nfs" Content="Enable NFS" HorizontalAlignment="Left" Margin="280,45,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="get_directx" Content="Get DirectX" HorizontalAlignment="Left" Margin="145,45,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="get_redist" Content="Get Visual C++" HorizontalAlignment="Left" Margin="10,45,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="install_chocolatey" Content="Install CHOCOLATEY" HorizontalAlignment="Left" Margin="145,10,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="install_winget" Content="Install WINGET" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top" Height="25" Width="125" FontWeight="Bold"/>
        <Button Name="open_ninite" Content="Open ninite.com" HorizontalAlignment="Left" Margin="280,10,0,0" VerticalAlignment="Top" Height="25" Width="124" FontWeight="Bold"/>
        
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



#Show Form
$Form.ShowDialog() | out-null