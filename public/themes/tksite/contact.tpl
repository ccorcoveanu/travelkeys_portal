{extends file='layouts/layout-main.tpl'}
{block name='content'}
    {include file='_partials/sec_hero.tpl'}
    {include file='_partials/contact_form.tpl'}
    <div class="section reach">
        <div class="container">
            <div class="reach__group">
                <i class="icon icon__phone"></i>
                <div class="reach__item">
                    <strong class="reach__label">Toll Free:</strong>
                    <span class="reach__value"><a class="reach__link" href="tel:8778759877" title="Call 877.875.9877">877.875.9877</a></span>
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
            <div class="reach__group">
                <i class="icon icon__location-gray"></i>
                <div class="reach__item -anchor-no-labels">
                    <strong class="reach__label">U.S Address</strong>
                    <span class="reach__value">1320 Ellsworth Industrial Blvd</span>
                    <span class="reach__value">Suite A1400 / A1500</span>
                    <span class="reach__value">Atlanta GA 30318	</span>
                </div>
            </div>
        </div>
    </div>
{/block}