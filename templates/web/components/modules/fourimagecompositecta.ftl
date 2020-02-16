<#import "/templates/system/common/cstudio-support.ftl" as studio />
<section id="${model.sectionid_s}" class="hero-section hero-section-2 ptb-100">
    <#if model.includeFloatingDots_b>
        <div class="circles">
            <div class="point animated-point-1"></div>
            <div class="point animated-point-2"></div>
            <div class="point animated-point-3"></div>
            <div class="point animated-point-4"></div>
            <div class="point animated-point-5"></div>
            <div class="point animated-point-6"></div>
            <div class="point animated-point-7"></div>
            <div class="point animated-point-8"></div>
            <div class="point animated-point-9"></div>
        </div>
    </#if>
    <div class="container">
        <div class="row align-items-center justify-content-between">
            <div class="col-md-6 col-lg-6">
                <div class="hero-content-left ptb-100 text-white" <@studio.iceAttr iceGroup="cta" label="Call to action" />>
                    <h1 class="text-white"><#if model.title_s??><span>${model.title_s}</span></#if> <#if model.subtitle_s??>${model.subtitle_s}</#if></h1>
                    <p class="lead"><#if model.description_html??>${model.description_html}</#if></p>

                    <#if model.text_s?? && model.target_s??><a href="${model.target_s}" class="btn app-store-btn">${model.text_s}</a></#if>
                </div>
            </div>
            <div class="col-md-6 col-lg-5">
                <#if model.images_o??>
                <div class="hero-animation-img" <@studio.iceAttr iceGroup="images" label="Images" />>
                    <#list model.images_o.item as item>
                        <img src="${item.image_s}" alt="${item.alt_s}"
                                <#if item?counter == 1>
                                    class="img-fluid d-block animation-one"
                                </#if>
                                <#if item?counter == 2>
                                    class="img-fluid d-none d-lg-block animation-two" width="120"
                                </#if>
                                <#if item?counter == 3>
                                    class="img-fluid d-none d-lg-block animation-three" width="120"
                                </#if>
                                <#if item?counter == 4>
                                    class="img-fluid d-none d-lg-block animation-four" width="230"
                                </#if>
                        >
                    </#list>
                </div>
                </#if>
            </div>
        </div>
    </div>
</section>
