main: ${package}.${JavaModName}
name: ${settings.getModName()?replace(" ", "")}
version: ${settings.getVersion()}
authors: [${settings.getAuthor()}]
<#if settings.getDescription()?has_content>
description: ${settings.getDescription()}
</#if>
<#if settings.getWebsiteURL()?has_content>
website: ${settings.getWebsiteURL()}
</#if>
api-version: 1.20

commands:
  <#list w.getElementsOfType("command") as command>
  ${command.getGeneratableElement().commandName}:
    permission: ${command.getGeneratableElement().commandName}.use
  </#list>
