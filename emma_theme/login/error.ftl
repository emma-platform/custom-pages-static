<div id="kc-error-message">
    <p class="instruction">${kcSanitize(message.summary)?no_esc}</p>
    <#if skipLink??>
    <#else>
        <#if client?? && client.baseUrl?has_content>
            <p><a id="backToApplication" href="${client.baseUrl}">${kcSanitize(msg("backToApplication"))?no_esc}</a></p>
        </#if>
    </#if>
</div>
