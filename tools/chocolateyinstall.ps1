$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'ftp://ftp.fu-berlin.de/pc/games/idgames/levels/doom2/megawads/scythe.zip'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = "$(Join-Path $toolsDir wad)"
  url           = $url
  checksum      = 'A38246E005B4675D1F91474CD8DD93F4DA016C4A22B1169DCEDE2608D72F6E99'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
