#AddPhotoDescription

Add-Type -AssemblyName System.Drawing

$SrcPath = $PSScriptRoot + "\src"
$DstPath = $PSScriptRoot + "\dst"

function ChangeFileNmae($srcfile)
{
	#�t�@�C���ǂݍ���
	$file = $SrcPath + "\"+$srcfile
	$img = New-Object Drawing.Bitmap($file)
	Write-Host($file)
	
	# �I���W�i���摜�f�[�^�̐����������擾���ďo�̓t�@�C�����𐶐�
	$byteAry = ($img.PropertyItems | Where-Object{$_.Id -eq 36867}).Value
	$time = [System.Text.Encoding]::ASCII.GetString($byteAry)
	$tmp = $time.replace(":","").replace(" ", "_").Remove(15,1)
	$outfilename = $tmp + "_" + $srcfile
	
	#���ʊi�[
	$DstFile = $DstPath +"\"+ $outfilename
	Write-Host($DstFile)
	Copy-Item $file $DstFile

	$img.Dispose()
}

New-Item $DstPath -type directory
$SrcList = Get-ChildItem($SrcPath)
foreach($item in $SrcList){
	Write-Host $item.Name
	ChangeFileNmae($item.Name)
}
