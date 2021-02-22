<#function mappedBlockToBlockStateCode mappedBlock>
    <#if mappedBlock.toString().contains("(world.") || mappedBlock.toString().contains("/*@BlockState*/")>
        <#return mappedBlock>
    <#else>
        <#return mappedBlock>
    </#if>
</#function>

<#function mappedMCItemToItemStackCode mappedBlock>
    <#return "Material." + mappedBlock>
    </#if>
</#function>
