<div class="section facts -style-pattern -color-light">
    <div class="container">
        <div class="location">
            {if isset($page.villas_number)}
                <div class="location__item">
                    <span class="location__item__number">{$page.villas_number}</span>
                    <span class="location__item__text">{$page.villas_text|default:''}</span>
                </div>
            {/if}
            {if isset($page.destinations_number)}
                <div class="location__item">
                    <span class="location__item__number">{$page.destinations_number}</span>
                    <span class="location__item__text">{$page.destinations_text|default:''}</span>
                </div>
            {/if}
            {if isset($page.years_number)}
                <div class="location__item">
                    <span class="location__item__number">{$page.years_number}</span>
                    <span class="location__item__text">{$page.years_text|default:''}</span>
                </div>
            {/if}
        </div>
    </div>
</div>