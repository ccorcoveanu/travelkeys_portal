{extends file='layouts/layout-main.tpl'}
{block name='content'}
    <article class="hero hero--secondary">
        <div class="container">
            <div class="hero__container hero--secondary__container">
                <h1 class="hero__title hero--secondary__title">Thank You<br>For Your Message</h1>
            </div>
        </div>
    </article>
    <!-- End Hero -->
    <article class="section confirmation">
        <h2 class="section__title confirmation__title">One of our villa specialists will begin working on your request. </h2>
        <div class="confirmation__wrapper">
            <p>Please expect to be contacted, via email and/or phone if provided, so we can discuss your rental criteria, property options and availability.</p>
            <p><strong class="-color-theme-black">Note: </strong>If you have additional questions or wish to speak to a villa specialist now, please call and we'd be happy to chat! </p>
        </div>
        <div class="section reach">
            <div class="container">
                <div class="reach__group">
                    <i class="icon icon__phone"></i>
                    <div class="reach__set">
                        <div class="reach__item">
                            <strong class="reach__label">Toll Free:</strong>
                            <span class="reach__value"><a class="reach__link" href="tel:8778759877" title="Call 877.875.9877">877.875.9877</a></span>
                        </div>
                        <div class="reach__item">
                            <strong class="reach__label">Uk:</strong>
                            <span class="reach__value"><a class="reach__link" href="tel:08006226815" title="Call 0800.622.6815">0800.622.6815</a></span>
                        </div>
                    </div>
                    <div class="reach__item">
                        <strong class="reach__label">International:</strong>
                        <span class="reach__value"><a class="reach__link" href="tel:4048153490" title="Call 404.815.3490">404.815.3490</a></span>
                    </div>
                </div>
                <div class="reach__group">
                    <i class="icon icon__schedule"></i>
                    <div class="reach__item">
                        <strong class="reach__label -display-inline">USA Office:</strong>
                        <span class="reach__value -display-inline">7:30am – 9:30pm</span>
                    </div>
                    <div class="reach__item">
                        <strong class="reach__label -display-inline">Hawaiian Office:</strong>
                        <span class="reach__value -display-inline">3pm - 11:30pm</span>
                    </div>
                    <div class="reach__item">
                        <strong class="reach__label -display-inline">Asia Office:</strong>
                        <span class="reach__value -display-inline">10pm - 7:30am</span>
                    </div>
                </div>
            </div>
        </div>
        <a class="button" href="{$smarty.const.BASE_URL}/villa-listing/search" title="See more villas">See more villas</a>
    </article>
{/block}