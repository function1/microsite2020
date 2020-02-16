<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <meta name="description" content="${model.metadescription_t}" />
    <meta name="author" content="Function1">

    <meta property="og:site_name" content=""/> <!-- website name -->
    <meta property="og:site" content=""/> <!-- website link -->
    <meta property="og:title" content="${model.title_s}"/> <!-- title shown in the actual shared post -->
    <meta property="og:description" content="${model.metadescription_t}"/> <!-- description shown in the actual shared post -->
    <meta property="og:image" content=""/> <!-- image link, make sure it's jpg -->
    <meta property="og:url" content=""/> <!-- where do you want your post to link to -->
    <meta property="og:type" content="article"/>

    <title>${model.title_s}</title>

    <link rel="icon" href="/static-assets/img/favicon.png" type="image/png" sizes="16x16">

    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700%7COpen+Sans&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="/static-assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static-assets/css/magnific-popup.css">
    <link rel="stylesheet" href="/static-assets/css/themify-icons.css">
    <link rel="stylesheet" href="/static-assets/css/animate.min.css">
    <link rel="stylesheet" href="/static-assets/css/jquery.mb.YTPlayer.min.css">
    <link rel="stylesheet" href="/static-assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/static-assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/static-assets/css/style.css">
    <link rel="stylesheet" href="/static-assets/css/responsive.css">
    <link rel="stylesheet" href="/static-assets/css/microsite2020.css">

</head>
<body>

<header class="header">
    <nav class="navbar navbar-expand-lg fixed-top bg-transparent">
        <div class="container">
            <a class="navbar-brand" href="/"><img src="/static-assets/img/microsite2020/landing-page-logo.png" width="120" alt="logo" class="img-fluid"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="ti-menu"></span>
            </button>
            <#if model.links_o??>
                <div class="collapse navbar-collapse main-menu" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <#list model.links_o.item as item>
                            <li class="nav-item">
                                <a class="nav-link page-scroll" href="#${item.sectionid_s}">${item.title_s}</a>
                            </li>
                        </#list>
                    </ul>
                </div>
            </#if>
        </div>
    </nav>
</header>

<div class="main">
    <#if model.sections_o?has_content && model.sections_o.item??>
        <#list model.sections_o.item as section>
            <@renderComponent component=section />
        </#list>
    </#if>
</div>

<script src="/static-assets/js/jquery-3.4.1.min.js"></script>
<script src="/static-assets/js/popper.min.js"></script>
<script src="/static-assets/js/bootstrap.min.js"></script>
<script src="/static-assets/js/jquery.magnific-popup.min.js"></script>
<script src="/static-assets/js/jquery.easing.min.js"></script>
<script src="/static-assets/js/jquery.mb.YTPlayer.min.js"></script>
<script src="/static-assets/js/wow.min.js"></script>
<script src="/static-assets/js/owl.carousel.min.js"></script>
<script src="/static-assets/js/jquery.countdown.min.js"></script>
<script src="/static-assets/js/scripts.js"></script>
<@studio.toolSupport/>
</body>
</html>