<!DOCTYPE html>
<html class="no-js">
<head>
    {block name='head'}
        {include file='_partials/head.tpl'}
    {/block}
</head>
<body class="{$page.body_classes|default:''}">
    {block name='header'}
        {include file='_partials/header.tpl'}
    {/block}
    <main class="main">
        {block name='content'}<h1>Hello there! You reached the default content</h1>{/block}
    </main>
    {block name='footer'}
        {include file='_partials/footer.tpl'}
    {/block}
    {block name='javascripts'}
        <!-- ! Javascripts -->
        <script async src="{$smarty.const.TEMPLATE_PATH}/assets/js/main.min.js"></script>
    {/block}
</body>
</html>