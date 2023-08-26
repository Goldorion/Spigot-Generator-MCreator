<#function toResourceLocation string>
    <#if string?matches('"[^+]*"')>
        <#return "new NamespacedKey(" + string?lower_case + ")">
    <#else>
        <#return "new NamespacedKey((" + string + ").toLowerCase(java.util.Locale.ENGLISH))">
    </#if>
</#function>

<#function toArmorSlot slot>
    <#if slot == "/*@int*/0">
        <#return "EquipmentSlot.FEET">
    <#elseif slot == "/*@int*/1">
        <#return "EquipmentSlot.LEGS">
    <#elseif slot == "/*@int*/2">
        <#return "EquipmentSlot.CHEST">
    <#elseif slot == "/*@int*/3">
        <#return "EquipmentSlot.HEAD">
    <#else>
        <#return "EquipmentSlot.HAND">
    </#if>
</#function>

<#function toBlockPos world x y z>
    <#return "new Location(" + world + "," + + opt.removeParentheses(x) + "," + opt.removeParentheses(y) + "," + opt.removeParentheses(z) +")">
</#function>