<article class="hero hero--secondary" {if isset($location->image)}style="background-image: url({$location->image});"{/if}>
    <div class="container">
        <div class="hero__container hero--secondary__container">
            <h1 class="hero__title hero--secondary__title">{$location->name}</h1>
            <h2 class="hero__subtitle hero--secondary__subtitle">{$location->descriptionShort}</h2>
        </div>
    </div>
</article>