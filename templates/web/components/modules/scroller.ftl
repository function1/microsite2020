<#import "/templates/system/common/cstudio-support.ftl" as studio />
<section id="${model.sectionid_s}" class="client-section ptb-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="section-heading text-center mb-5" <@studio.iceAttr iceGroup="text" />>
                    <h2>${model.title_s}</h2>
                    <p class="lead">
                        ${model.description_html}
                    </p>
                </div>
            </div>
        </div>
        <#if model.images_o??>
        <div class="row align-items-center">
            <div class="col-md-12">
                <div class="owl-carousel owl-theme clients-carousel dot-indicator" <@studio.iceAttr iceGroup="images" label="Images" />>
                    <#list model.images_o.item as item>
                        <div class="item single-client">
                            <img src="${item.image_s}" alt="${item.alt_s}" class="client-img">
                        </div>
                    </#list>
                </div>
            </div>
        </div>
        </#if>
    </div>
</section>
