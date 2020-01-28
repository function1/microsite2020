<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="_component_video container" <@studio.iceAttr iceGroup="content" />>
    <h2>${model.title_s}</h2>
    <div class="date">DATE....</div>
    <#if model.description_html??><div class="description">${model.description_html}</div></#if>
    <a rel="noopener noreferer" target="_blank" src="${model.url_s}">
        <img class="image" src="${model.image_s}" alt="${model.title_s}" />
    </a>
</div>