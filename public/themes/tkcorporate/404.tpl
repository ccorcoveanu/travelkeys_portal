{extends file='layouts/layout-main.tpl'}
{block name='content'}
    <article class="hero">
        <div class="hero__wrapper">
            <h1 class="hero__title">Oops!</h1>
            <p class="hero__copy">{$hero_message}</p>
        </div>
    </article>
    <article class="section section--not-found">
        <div class="container">
            <h2 class="section__title not-found__title">{$code} Error</h2>
            <p class=" not-found__copy">{$error_message}</p>
            <div class="not-found__buttons">
                <a class="button -color-black -size-wide" href="{$back_link}" title="Return to previous page">Return to previous page</a>
                <a class="button -color-black -size-wide" href="{$smarty.const.BASE_URL}" title="Return to main page">Return to main page</a>
            </div>
        </div>
    </article>
{/block}