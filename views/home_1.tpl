{extends file="views/layout.tpl"}
{block name=content}
    
    {foreach item=group from=$groups}
    <section class="group">
        <header>
            {$group->name}
        </header>

        {foreach item=product from=$group->products}
        <article>
            <div class="image" data-image="{$product->image}"></div>
            <header>

            </header>
        </article>
        {/foreach}
    </section>
    {/foreach}
    
{/block}


<!--
<section class="group">
    <header>
        Burgers
    </header>
    <article>
        <div class="image" data-image="http://www.nubiarestaurant.com/wp-content/uploads/2015/09/burger_sandwich_1-300x229.jpg"></div>
        <header>
            Bioburger (rund)
        </header>
    </article>
    <article>
        <div class="image" data-image="">

        </div>
        <header>
            Zalmburger
        </header>

    </article>
    <article>
        <div class="image">

        </div>
        <header>
            Groenteburger (vegan)
        </header>
    </article>

</section>

<section class="group">
    <header>Broodjes</header>

    <article>
        <div class="image" data-image="http://www.nubiarestaurant.com/wp-content/uploads/2015/09/turkey_sub.jpg"></div>

    </article>
</section>

<section class="group">
    <header>Salades</header>

    <article>
        <div class="image" data-image="http://www.nubiarestaurant.com/wp-content/uploads/2015/07/salad-plate_1-300x213.jpg"></div>

    </article>
</section>

<section class="group">
    <header>Smoothies</header>
</section>

<section class="group">
    <header>Fruit</header>
</section>


-->