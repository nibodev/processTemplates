<div style="margin: auto; width: 800px;">

# Uma nova versão do {{releaseDetails.releaseDefinition.name}} está disponível 
<span style="color: rgba(0,0,0,0.7); font-size: 12px">[{{releaseDetails.name}}]({{releaseDetails._links.web.href}}) feito em `{{date (replace (date releaseDetails.modifiedOn) "+00:00" "-03:00") "DD/MM/YYYY hh:mm"}}`  iniciado por @<{{releaseDetails.modifiedBy.uniqueName}}></span>
<br></br>
<center><img src="/nibogestao/4da38e96-7ba2-427c-9275-c3b3eb682469/_apis/git/repositories/4f4e3e2a-7418-430b-81c9-bb53fae05532/Items?path=%2F.attachments%2Ffoguete-ec407c13-76b1-41a5-a0cc-6cdd1498e981.jpg&download=false&resolveLfs=true&%24format=octetStream&api-version=5.0-preview.1&sanitize=true&versionDescriptor.version=wikiMaster" width="300" /></center>

## O que há de novo?
-----------
{{#forEach this.workItems}}
   - #{{this.id}}
      >
      > {{{lookup this.fields 'System.Description'}}}
      >
{{/forEach}} 

{{#forEach pullRequests}}
{{#if isFirst}}
<br></br>
## Pull Requests associados
-----------
{{/if}}
- [x][{{this.title}}]({{replace (replace this.url "_apis/git/repositories" "_git") "pullRequests" "pullRequest"}}) <span style="color: rgba(0,0,0,0.7); font-size: 12px">- por {{this.createdBy.displayName}}</span>
{{/forEach}}
</div>
