$PSDefaultParameterValues = @{ '*:Encoding' = 'utf8' }
$fileContent = (Get-Content("$(System.DefaultWorkingDirectory)\SlackNotesTemplate.md") -join "`n")
Write-Output "##vso[task.setvariable variable=slackMessage]$fileContent"
