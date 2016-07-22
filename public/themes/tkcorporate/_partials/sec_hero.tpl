<article class="hero hero--secondary">
    <div class="container">
        <div class="hero__container hero--secondary__container">
            <h1 class="hero__title hero--secondary__title">{$page.hero_sec_title|default:''}</h1>
            <h2 class="hero__subtitle hero--secondary__subtitle">{$page.hero_sec_description|default:''}</h2>
            {if isset($page.hero_sec_link)}
                {$page.hero_sec_link|default:''}
            {/if}
        </div>
    </div>
</article>