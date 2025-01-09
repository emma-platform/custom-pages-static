<!DOCTYPE html>
<html <#if realm.internationalizationEnabled> lang="${locale.currentLanguageTag}"</#if>>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Onest:wght@500..600&display=swap" rel="stylesheet">
        <#if properties.styles?has_content>
            <#list properties.styles?split(' ') as style>
                <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
            </#list>
        </#if>
    </head>
    <body>
        <div class="error-block">
            <div class="error-main">
                <div class="emma-logo">
                </div>
                <div class="message-background">
                    <div class="message-form">
                        <div class="message-header">
                            Something went wrong
                        </div>
                        <div class="message-text">
                            Please contact technical support to resolve the issue.
                        </div>
                        <#if client?? && client.baseUrl?has_content>
                            <a class="message-button" id="backToApplication" href="${client.baseUrl}">Go to Portal emma</a>
                        </#if>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

