function Prompt
{
"[" + $env:USERNAME + "@" + $env:COMPUTERNAME + "]-[" + (Get-Location) + "]`nPS> "
}

function b64d ($str) {
    [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("$str"))
}

Set-PSReadlineKeyHandler -Key Tab -Function Complete
Set-PSReadlineOption -ShowToolTips