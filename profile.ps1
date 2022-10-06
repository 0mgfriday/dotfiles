function Prompt
{
"$($PSStyle.Background.Green)$($PSStyle.Bold)" + $env:USERNAME + "@" + $env:COMPUTERNAME + " $($PSStyle.Background.BrightCyan) " + (Get-Location) + "$($PSStyle.Reset)`nPS> "
}

function b64d ($str) {
    [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("$str"))
}

function urlencode ($str) {
    [System.Web.HTTPUtility]::UrlEncode($str)
}

function urldecode ($str) {
    [System.Web.HTTPUtility]::UrlDecode($str)
}

Set-PSReadlineKeyHandler -Key Tab -Function Complete
Set-PSReadlineOption -ShowToolTips