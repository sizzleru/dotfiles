# env vars
$env:EDITOR = "vim"
$env:VISUAL = $env:EDITOR

# vi mode
Set-PSReadLineOption -EditMode Vi

# prompt
function prompt {
    $location = (Get-Location).Path.Replace($HOME, '~')
    $user = $env:USERNAME
    $host_ = $env:COMPUTERNAME.ToLower()

    Write-Host "$user@$host_" -ForegroundColor Cyan -NoNewline
    Write-Host " $location" -ForegroundColor Yellow -NoNewline
    return " > "
}

# git
function gitbh {
	cd "${HOME}"
	git bh ${args}[0]
	git unstage
	git restore .gitignore README.md
}
