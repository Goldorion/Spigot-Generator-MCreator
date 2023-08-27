<#function mappedBlockToBlockStateCode mappedBlock>
    <#if mappedBlock?starts_with("/*@BlockState*/")>
        <#return mappedBlock?replace("/*@BlockState*/","")>
    <#elseif mappedBlock?contains("/*@?*/")>
        <#assign outputs = mappedBlock?keep_after("/*@?*/")?keep_before_last(")")>
        <#return mappedBlock?keep_before("/*@?*/") + "?" + mappedBlockToBlockStateCode(outputs?keep_before("/*@:*/"))
            + ":" + mappedBlockToBlockStateCode(outputs?keep_after("/*@:*/")) + ")">
    <#else>
        <#return mappedBlockToBlock(mappedBlock) + ".getState()">
    </#if>
</#function>

<#function mappedBlockToBlock mappedBlock>
    <#if mappedBlock?starts_with("/*@BlockState*/")>
        <#return mappedBlock?replace("/*@BlockState*/","") + ".getBlock()">
    <#elseif mappedBlock?contains("/*@?*/")>
        <#assign outputs = mappedBlock?keep_after("/*@?*/")?keep_before_last(")")>
        <#return mappedBlock?keep_before("/*@?*/") + "?" + mappedBlockToBlock(outputs?keep_before("/*@:*/"))
            + ":" + mappedBlockToBlock(outputs?keep_after("/*@:*/")) + ")">
    <#else>
        <#return mappedBlock>
    </#if>
</#function>

<#function mappedMCItemToItemStackCode mappedBlock amount=1>
    <#if mappedBlock?starts_with("/*@ItemStack*/")>
        <#return mappedBlock?replace("/*@ItemStack*/", "")>
    <#elseif mappedBlock?contains("/*@?*/")>
        <#assign outputs = mappedBlock?keep_after("/*@?*/")?keep_before_last(")")>
        <#return mappedBlock?keep_before("/*@?*/") + "?" + mappedMCItemToItemStackCode(outputs?keep_before("/*@:*/"), amount)
            + ":" + mappedMCItemToItemStackCode(outputs?keep_after("/*@:*/"), amount) + ")">
    <#else>
        <#return toItemStack("Material." + mappedBlock?upper_case, amount)>
    </#if>
</#function>

<#function toItemStack item amount>
    <#if amount == 1>
        <#return "new ItemStack(" + item + ")">
    <#else>
        <#return "new ItemStack(" + item + "," + (amount == amount?floor)?then(amount + ")","(int)(" + amount + "))")>
    </#if>
</#function>

<#function mappedElementToRegistryEntry mappedElement>
    <#return JavaModName + generator.isBlock(mappedElement)?then("Blocks", "Items") + "."
    + generator.getRegistryNameFromFullName(mappedElement)?upper_case + transformExtension(mappedElement)?upper_case>
</#function>

<#function transformExtension mappedBlock>
    <#assign extension = mappedBlock?keep_after_last(".")?replace("body", "chestplate")?replace("legs", "leggings")>
    <#return (extension?has_content)?then("_" + extension, "")>
</#function>