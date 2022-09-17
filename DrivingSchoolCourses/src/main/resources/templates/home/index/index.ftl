<!DOCTYPE html>
<html lang="zh-CN">
<head>

    <title>驾校管理</title>
    <meta charset="UTF-8">
    <meta name="description" content="AuCreative theme tempalte">
    <meta name="author" content="AuCreative">
    <meta name="keywords" content="AuCreative theme template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<#include "../common/common.ftl"/>
</head>
<body class="animsition restyle-index">

<header>
		<#include "../common/header.ftl" />
</header>

<!-- Slide -->
<section class="slider">
    <div class="rev_slider_wrapper fullwidthbanner-container rs1-revo">
        <div id="rev_slider_1" class="rev_slider fullwidthabanner" data-version="5.4.5" style="display:none">
            <ul>
                <!-- Slide 1 -->
                <li data-transition="fade">
                    <img src="/home/picture/slide-01.jpg" alt="IMG-SLIDE" class="rev-slidebg">

                    <h2 class="tp-caption tp-resizeme txt1 txt-center p-l-15 p-r-15"
                        data-frames='[{"delay":500,"speed":1500,"frame":"0","from":"x:left;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                        data-x="center"
                        data-y="center"
                        data-width="['1200','992','768','480']"
                        data-hoffset="['0','0','0','0']"
                        data-voffset="['-85','-85','-85','-160']"
                        data-fontsize="['50', '50', '50', '50']"
                        data-lineheight="['60', '60', '60', '60']"
                        data-height="['auto']"
                    >Free video lessons</h2>

                    <p class="tp-caption tp-resizeme txt2 txt-center p-l-15 p-r-15"
                       data-frames='[{"delay":1500,"speed":1500,"frame":"0","from":"x:right;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                       data-x="center"
                       data-y="center"
                       data-width="['780','780','780','480']"
                       data-hoffset="['0','0','0','0']"
                       data-voffset="['-10','-10','-10','-50']"
                       data-fontsize="['18', '18', '18', '16']"
                       data-lineheight="['30', '30', '30', '30']"
                       data-height="['auto']"
                    >Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed odio sit amet nibh vulputate
                        cursus a sit amet mauris. Morbi accumsan ipsum velit.
                    </p>

                    <div class="tp-caption tp-resizeme wrap-btn-slide"
                         data-frames='[{"delay":3000,"speed":1500,"frame":"0","from":"y:bottom;rX:-20deg;rY:-20deg;rZ:0deg;","to":"o:1;","ease":"Power3.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                         data-x="center"
                         data-y="center"
                         data-hoffset="['0','0','0','0']"
                         data-voffset="['75','75','75','90']"
                         data-height="['auto']">
                        <div class="p-l-10 p-r-10 p-t-5 p-b-5">
                            <!-- Button -->
                            <a href="/home/index/about" class="btn-drive size1 m-txt1 bg-main bo-rad-4 trans-03">
                                我们的服务
                                <i class="fa fa-chevron-right m-l-9 fs-14" aria-hidden="true"></i>
                            </a>
                        </div>

                        <div class="p-l-10 p-r-10 p-t-5 p-b-5">
                            <!-- Button -->
                            <a href="/home/course/list" class="btn-drive size1 m-txt2 bgwhite bo-rad-4 trans-03">
                                更多课程
                                <i class="fa fa-chevron-right m-l-9 fs-14" aria-hidden="true"></i>
                            </a>
                        </div>
                    </div>

                </li>

                <!-- Slide 2 -->
                <li data-transition="fade">
                    <img src="/home/picture/slide-02.jpg" alt="IMG-SLIDE" class="rev-slidebg">

                    <h2 class="tp-caption tp-resizeme txt1 txt-center p-l-15 p-r-15"
                        data-frames='[{"delay":500,"speed":1500,"frame":"0","from":"y:top;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                        data-x="center"
                        data-y="center"
                        data-width="['1200','992','768','480']"
                        data-hoffset="['0','0','0','0']"
                        data-voffset="['-85','-85','-85','-160']"
                        data-fontsize="['50', '50', '50', '50']"
                        data-lineheight="['60', '60', '60', '60']"
                        data-height="['auto']"
                    >Free video lessons</h2>

                    <p class="tp-caption tp-resizeme txt2 txt-center p-l-15 p-r-15"
                       data-frames='[{"delay":1500,"speed":1500,"frame":"0","from":"y:bottom;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                       data-x="center"
                       data-y="center"
                       data-width="['780','780','780','480']"
                       data-hoffset="['0','0','0','0']"
                       data-voffset="['-10','-10','-10','-50']"
                       data-fontsize="['18', '18', '18', '16']"
                       data-lineheight="['30', '30', '30', '30']"
                       data-height="['auto']"
                    >Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed odio sit amet nibh vulputate
                        cursus a sit amet mauris. Morbi accumsan ipsum velit.
                    </p>

                    <div class="tp-caption tp-resizeme wrap-btn-slide"
                         data-frames='[{"delay":3000,"speed":1500,"frame":"0","from":"z:0;rX:0;rY:0;rZ:0;sX:0.8;sY:0.8;skX:0;skY:0;opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                         data-x="center"
                         data-y="center"
                         data-hoffset="['0','0','0','0']"
                         data-voffset="['75','75','75','90']"
                         data-height="['auto']">
                        <div class="p-l-10 p-r-10 p-t-5 p-b-5">
                            <!-- Button -->
                            <a href="/home/index/about" class="btn-drive size1 m-txt1 bg-main bo-rad-4 trans-03">
                                我们的服务
                                <i class="fa fa-chevron-right m-l-9 fs-14" aria-hidden="true"></i>
                            </a>
                        </div>

                        <div class="p-l-10 p-r-10 p-t-5 p-b-5">
                            <!-- Button -->
                            <a href="/home/course/list" class="btn-drive size1 m-txt2 bgwhite bo-rad-4 trans-03">
                                更多课程
                                <i class="fa fa-chevron-right m-l-9 fs-14" aria-hidden="true"></i>
                            </a>
                        </div>
                    </div>
                </li>

                <!-- Slide 3 -->
                <li data-transition="fade">
                    <img src="/home/picture/slide-03.jpg" alt="IMG-SLIDE" class="rev-slidebg">

                    <h2 class="tp-caption tp-resizeme txt1 txt-center p-l-15 p-r-15"
                        data-frames='[{"delay":500,"speed":1500,"frame":"0","from":"x:-500px;skX:85px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                        data-x="center"
                        data-y="center"
                        data-width="['1200','992','768','480']"
                        data-hoffset="['0','0','0','0']"
                        data-voffset="['-85','-85','-85','-160']"
                        data-fontsize="['50', '50', '50', '50']"
                        data-lineheight="['60', '60', '60', '60']"
                        data-height="['auto']"
                    >Free video lessons</h2>

                    <p class="tp-caption tp-resizeme txt2 txt-center p-l-15 p-r-15"
                       data-frames='[{"delay":1500,"speed":1500,"frame":"0","from":"x:500px;skX:-85px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                       data-x="center"
                       data-y="center"
                       data-width="['780','780','780','480']"
                       data-hoffset="['0','0','0','0']"
                       data-voffset="['-10','-10','-10','-50']"
                       data-fontsize="['18', '18', '18', '16']"
                       data-lineheight="['30', '30', '30', '30']"
                       data-height="['auto']"
                    >Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed odio sit amet nibh vulputate
                        cursus a sit amet mauris. Morbi accumsan ipsum velit.
                    </p>

                    <div class="tp-caption tp-resizeme wrap-btn-slide"
                         data-frames='[{"delay":3000,"speed":1500,"frame":"0","from":"y:bottom;rZ:90deg;sX:2;sY:2;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                         data-x="center"
                         data-y="center"
                         data-hoffset="['0','0','0','0']"
                         data-voffset="['75','75','75','90']"
                         data-height="['auto']">
                        <div class="p-l-10 p-r-10 p-t-5 p-b-5">
                            <!-- Button -->
                            <a href="/home/index/about" class="btn-drive size1 m-txt1 bg-main bo-rad-4 trans-03">
                                我们的服务
                                <i class="fa fa-chevron-right m-l-9 fs-14" aria-hidden="true"></i>
                            </a>
                        </div>

                        <div class="p-l-10 p-r-10 p-t-5 p-b-5">
                            <!-- Button -->
                            <a href="/home/course/list" class="btn-drive size1 m-txt2 bgwhite bo-rad-4 trans-03">
                                更多课程
                                <i class="fa fa-chevron-right m-l-9 fs-14" aria-hidden="true"></i>
                            </a>
                        </div>
                    </div>
                </li>


            </ul>
        </div>
    </div>
</section>

<!-- 特色 -->
<section class="bgwhite p-t-70 p-b-40">
    <div class="container">
        <div class="row">

            <#list hitsTop3 as hitsTop>
            <div class="col-sm-9 col-md-7 col-lg-4 p-b-30 m-lr-auto">
                <!-- Block 1 -->
                <div class="block-1">
                    <div class="wrap-pic-b1 wrap-pic-w">
                        <#if hitsTop.pic??>
                            <#if hitsTop.pic?length gt 0>
                                <img src="/photo/view?filename=${hitsTop.pic}" style="width: 380px;height: 277px" alt="IMG-FEATURE">
                            <#else>
                                <img src="/admin/images/default-head.jpg" style="width: 380px;height: 277px" alt="IMG-FEATURE">
                            </#if>
                        </#if>
                    </div>

                    <div class="wrap-text-b1 bg-main op-09 trans-05 ">
                        <a href="/home/news/details?id=${hitsTop.id}" class="wrap-title-b1">
                            <i class="fa fa-car color-white fs-30" aria-hidden="true"></i>
                            <h4 class="m-txt3 color-white tt-up m-l-15">${hitsTop.title}</h4>
                        </a>

                        <div class="wrap-para-b1 p-l-50 p-r-20 m-tt-20 ">
                            <p class="s-txt1">
                                <#if hitsTop.content?length gt 10>
                                    ${hitsTop.content?substring(0,10)}...
                                <#else>
                                    ${hitsTop.content}
                                </#if>
                            </p>
                        </div>
                        <div class="wrap-more-b1 p-l-50 p-t-10">
                            <a href="/home/news/details?id=${hitsTop.id}" class="s-txt1 hov-color-white m-tt-10">
                                <i class="fa fa-caret-right fs-16 trans-04" aria-hidden="true"></i>
                                <span class=" trans-04">阅读更多</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            </#list>

        </div>
    </div>
</section>

<!-- 特色 -->
<section class="bg1 p-t-75 p-b-90 features">
    <div class="container">
        <div>
            <h3 class="m-txt4 txt-center p-b-8 respon1">
                我们的特色
            </h3>
            <div class="bg-main size2 bo-rad-3 m-lr-auto"></div>
        </div>

        <div class="row">
            <div class="flex-str col-sm-6 col-lg-3 p-t-65">
                <!-- Block 2 -->
                <div class="block-2">
                    <div class="wrap-b2 p-t-60 p-b-30 p-l-19 p-r-19">
                        <div class="wrap-symbol-b2">
                            <div class="symbol-1 rotate-symbol-1">
                                <i class="fa fa-film " aria-hidden="true"></i>
                            </div>
                        </div>

                        <h4 class="m-txt5 txt-center p-b-8">
                            INSTRUCTIONAL VIDEO
                        </h4>

                        <p class="s-txt2 txt-center">
                            Morbi efficitur tellus sapien, non feugiat ligula fringilla in. Morbi scelerisque placerat
                            porta. Vivamus commodo consectetur commodo.
                        </p>
                    </div>
                </div>
            </div>

            <div class="flex-str col-sm-6 col-lg-3 p-t-65">
                <!-- Block 2 -->
                <div class="block-2">
                    <div class="wrap-b2 p-t-60 p-b-30 p-l-19 p-r-19">
                        <div class="wrap-symbol-b2">
                            <div class="symbol-1 rotate-symbol-1">
                                <i class="fa fa-hand-o-right" aria-hidden="true"></i>
                            </div>
                        </div>

                        <h4 class="m-txt5 txt-center p-b-8">
                            DRIVING LESSONS
                        </h4>

                        <p class="s-txt2 txt-center">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nisi magna, cursus eget risus
                            et, congue dapibus mauris. Morbi sed convallis
                        </p>
                    </div>
                </div>
            </div>

            <div class="flex-str col-sm-6 col-lg-3 p-t-65">
                <!-- Block 2 -->
                <div class="block-2">
                    <div class="wrap-b2 p-t-60 p-b-30 p-l-19 p-r-19">
                        <div class="wrap-symbol-b2">
                            <div class="symbol-1 rotate-symbol-1">
                                <i class="fa fa-car" aria-hidden="true"></i>
                            </div>
                        </div>

                        <h4 class="m-txt5 txt-center p-b-8">
                            DRIVER CONFIDENCE
                        </h4>

                        <p class="s-txt2 txt-center">
                            Vivamus porta magna ac interdum luctus. Suspendisse ante nisl, blandit id aliquet eget,
                            hendrerit vel libero. Sed egestas, nulla id interdum laoreet
                        </p>
                    </div>
                </div>
            </div>

            <div class="flex-str col-sm-6 col-lg-3 p-t-65">
                <!-- Block 2 -->
                <div class="block-2">
                    <div class="wrap-b2 p-t-60 p-b-30 p-l-19 p-r-19">
                        <div class="wrap-symbol-b2">
                            <div class="symbol-1 rotate-symbol-1">
                                <i class="fa fa-id-card-o" aria-hidden="true"></i>
                            </div>
                        </div>

                        <h4 class="m-txt5 txt-center p-b-8">
                            CERTIFIED
                        </h4>

                        <p class="s-txt2 txt-center">
                            Maecenas vitae dolor magna eleifend pulvinar. Morbi id venenatis ante. Praesent sed bibendum
                            magna. Vestibulum ante ipsum
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<!-- 感言 -->
<section class="testimonial">
    <div class="wrap-testimonial parallax100 bg-overlay-3 p-t-75 p-b-80" style="background-image: url('/home/images/testimonial-bg-01.jpg');">
        <div class="wrap-slide-slick-1">
            <div class="p-b-40">
                <h3 class="m-txt6 txt-center p-b-8 respon1">推荐</h3>
                <div class="bg-main size2 bo-rad-3 m-lr-auto"></div>
            </div>
            <div class="slide-slick-1 js-slick-1">
					<#if recommends??>
						<#if recommends?size gt 0>
                            <#list recommends as item>
                    			<div class="item-slick-1">
                                    <p class="para-slide-slick-1 m-lr-auto w-size1 s-txt1 txt-center p-l-40 p-r-40 p-b-25 animated">
                                        ${item.content}
                                    </p>
                                    <div class="wrap-person m-lr-auto flex-c-m animated">
                                        <div class="wrap-pic-person">
											<#if item.user.headPic??>
												<#if item.user.headPic?length gt 0>
													<img src="/photo/view?filename=${item.user.headPic}" alt="IMG-PERSON">
                                                <#else>
													 <img src="/admin/images/default-head.jpg"  alt="IMG-PERSON">
                                                </#if>
                                            <#else>
												 <img src="/admin/images/default-head.jpg"  alt="IMG-PERSON">
                                            </#if>
                                        </div>

                                        <div class="wrap-info-person p-l-20">
                                            <span class="dis-block s-txt3">${item.user.username}</span>
                                            <span class="dis-block s-txt4">Super Administrator</span>
                                        </div>
                                    </div>
                                </div>
                            </#list>
                        </#if>
                    </#if>
            </div>
        </div>
    </div>
</section>


<!-- 课程 -->
<section class="bgwhite p-t-75 p-b-90">
    <div class="container">

        <div class="p-b-10">
            <div class="p-b-24">
                <h3 class="m-txt4 txt-center p-b-8 respon1">我们的课程产品</h3>
                <div class="bg-main size2 bo-rad-3 m-lr-auto"></div>
            </div>
        </div>

        <div class="row">

            <#list hitsTop4 as hitsTop>
            <div class="col-sm-6 col-lg-3 p-t-30">
                <!-- Block 3 -->
                <div class="block-3 bo2">
                    <div class="wrap-pic-b3 wrap-pic-w hov5 bo2-b">
                        <#if hitsTop.coverPhoto??>
                            <#if hitsTop.coverPhoto?length gt 0>
                                <img src="/photo/view?filename=${hitsTop.coverPhoto}" style="width: 268px;height: 201px" alt="IMG-FEATURE">
                            <#else>
                                <img src="/admin/images/default-head.jpg" style="width: 268px;height: 201px" alt="IMG-FEATURE">
                            </#if>
                        <#else>
                            <img src="/admin/images/default-head.jpg" style="width: 268px;height: 201px" alt="IMG-FEATURE">
                        </#if>



                    </div>
                    <div class="wrap-text-b3 p-l-20 p-r-20 p-t-16 p-b-26">
                        <div class="flex-sb-m p-b-12">
                            <span class="s-txt5">
                                <#if hitsTop.type?length gt 10>
                                    ${hitsTop.type?substring(0,10)}...
                                <#else>
                                    ${hitsTop.type}
                                </#if>
                            </span>
                            <span class="color1 fs-12">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                            </span>
                        </div>
                        <h4 class="m-txt8 hov-color-main trans-04 p-b-12">
                             <#if hitsTop.title?length gt 10>
                                 ${hitsTop.title?substring(0,10)}...
                             <#else>
                                 ${hitsTop.title}
                             </#if>
                        </h4>

                        <span class="m-txt9">$${hitsTop.price}</span>
                        <div class="wrap-btn-b3 flex-w p-t-13">
                            <div class="m-r-8 p-t-8">
                                <!-- Button -->
                                <a href="/home/course/scheduleDetail?id=${hitsTop.id}" class="btn-drive m-txt1 size3 bg-main hov-color-white bo-rad-4">现在预订</a>
                            </div>

                            <div class="p-t-8">
                                <a href="/home/course/detail/${hitsTop.id}"
                                   class="btn-drive m-txt10 size4 bo3 bg1 hov-color-white bo-rad-4">详情
                                </a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            </#list>

        </div>

        <div class="flex-c-m p-t-46">
            <!-- Button -->
            <a href="/home/course/list" class="btn-drive m-txt1 size5 bg2 hov-color-white bo-rad-4">
                查看所有课程
                <i class="fa fa-chevron-right m-l-9 fs-14" aria-hidden="true"></i>
            </a>
        </div>
    </div>
</section>



<!-- 最新消息 -->
<section class="bgwhite p-t-75 p-b-90">
    <div class=" p-b-10">
        <div class="p-b-24">
            <h3 class="m-txt4 txt-center p-b-8 respon1">最新消息</h3>

            <div class="bg-main size2 bo-rad-3 m-lr-auto"></div>
        </div>
    </div>
    <div class="container-slick-2">
        <div class="wrap-slick-2">
            <div class="slick-2 js-slick-2">

            <#list createTimeTop6 as createTimeTop>
                <div class="item-slick-2 m-l-15 m-r-15">
                    <!-- Block 4 -->
                    <div class="block-4">
                        <div class="wrap-pic-b4 wrap-pic-w hov5">
                            <a href="/home/news/details?id=${createTimeTop.id}">
                                <#if createTimeTop.pic??>
                                <#if createTimeTop.pic?length gt 0>
                                    <img src="/photo/view?filename=${createTimeTop.pic}" style="width: 380px;height: 277px" alt="IMG-NEWS">
                                <#else>
                                    <img src="/admin/images/default-head.jpg" style="width: 380px;height: 277px" alt="IMG-NEWS">
                                </#if>
                                <#else>
                                <img src="/admin/images/default-head.jpg" style="width: 380px;height: 277px" alt="IMG-NEWS">
                                </#if>
                            </a>
                        </div>

                        <div class="wrap-text-b4 p-t-23">
                            <a href="/home/news/details?id=${createTimeTop.id}">
                                <h4 class="m-txt8 hov-color-main trans-04 m-b-10">
                                    <#if createTimeTop.title?length gt 10>
                                        ${createTimeTop.title?substring(0,10)}...
                                    <#else>
                                        ${createTimeTop.title}
                                    </#if>
                                </h4>
                            </a>

                            <span class="s-txt7">${createTimeTop.createTime} </span>
                            <p class="s-txt2 p-t-11 p-b-22">
                            <#if createTimeTop.content?length gt 10>
                                ${createTimeTop.content?substring(0,10)}...
                            <#else>
                                ${createTimeTop.content}
                            </#if>
                            </p>
                            <div class="wrap-btn-b4 flex-w">
                                <!-- Button -->
                                <a href="/home/news/details?id=${createTimeTop.id}" class="btn-drive m-txt10 size8 bo3 bg1 hov-color-white bo-rad-4">
                                    阅读更多
                                </a>
                            </div>

                        </div>
                    </div>
                </div>
            </#list>
            </div>
        </div>
    </div>
</section>

<!-- Map -->
<div class="map">
    <div class="contact-map h-size1" id="google_map" data-map-x="40.648578" data-map-y="-73.962730"
         data-pin="images/icons/favicon.png" data-scrollwhell="0" data-draggable="1" data-zoom="15"></div>
</div>
<#include "../common/footer.ftl"/>
<#include "../common/footer-js.ftl"/>
<script src="/home/js/31e5c13de5564e6aae12101b95eb39d7.js"></script>
<script src="/home/js/map-custom.js"></script>
<script src="/home/js/main.js"></script>
</body>
</html>