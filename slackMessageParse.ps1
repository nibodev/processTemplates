$PSDefaultParameterValues = @{ '*:Encoding' = 'utf8' }
$fileContent = Get-Content("$(System.DefaultWorkingDirectory)\SlackNotesTemplate.md")
$fileContent = $fileContent.replace("`n","``n")
Write-Output "##vso[task.setvariable variable=slackMessage]$fileContent"
