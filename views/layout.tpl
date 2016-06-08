<html>
    <head>
        <title>BioMeal</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="theme-color" content="#80C74A">
        
        <link href="/resources/fonts/lobster/stylesheet.css" rel="stylesheet">
        <link href="/resources/fonts/sofia/stylesheet.css" rel="stylesheet">
        <link href="/generated/styles/layout.css" rel="stylesheet">
    </head>
    <body>
        <div id="menu">

            <div class="container">

                <div class="grid">
                    <div class="col col-2">
                        <div id="logo">
                            <img src="/resources/images/logo.png" alt="BioMeal">
                        </div>
                    </div>
                    <div class="col col-8">

                        <nav>
                            <a class="active">
                                Producten
                            </a>
                            <a>
                                Actueel
                            </a>
                            <a>
                                Over BioMeal
                            </a>
                        </nav>

                    </div>


                </div>

            </div>
        </div>
        
        <div id="header" style="display: none;">
            &nbsp;
        </div>
            
        


        <div class="container" style="z-index: 0; position: relative;">

            <div class="grid">
                <div id="sidenav" class="col col-2" style="margin-top: 30px;">
                    <div class="box">
                        <header>
                            Categorieën
                        </header>
                        <nav>
                            {foreach item=group from=$groups}
                                <div class="item">
                                    <a href="#{$group->name}">{$group->name}</a>
                                </div>
                            {/foreach}
                        </nav>
                    </div>
                </div>
                <div class="col col-8">
                    {block name=content}{/block}
                </div>
                
                <div class="col col-2" id="qwe">
                    
                    <aside  class="curled" id="order">
                        <header>
                            Bestelling
                        </header>
                        <p>
                            Maak een keuze uit ons assortiment
                        </p>
                        <img src="/resources/images/arrow.png" alt="links">
                        
                        <div id="delivery">
                        
                            <div>
                                Bezorgen
                            </div>
                            <div>
                                <input type="text" placeholder="1234 AB">
                            </div>
                            <div>
                                <button>Ok</button>
                            </div>
                        </div>
                    </aside>
                </div>
                
            </div>
            
        </div>
            
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-beta1/jquery.min.js"></script>
        <script src="/resources/scripts/jquery.backstretch.js"></script>
        <script src="/resources/scripts/jquery.sticky-kit.js"></script>
        
        <script src="/resources/scripts/jquery.scrollTo.min.js"></script>
        <script>
            /*$.backstretch("/resources/images/background.min.jpg", {
                centeredY: false
            });*/
            
            $('article .image[data-image]').each(function () {
                
                var url = $(this).attr('data-image');
                $(this).css('background-image', 'url(' + url + ')');
            });
            
            $(document).ready(function(){
                
                $("#menu").stick_in_parent();
                $("#sidenav").stick_in_parent({literal}{offset_top: 50}{/literal});
                $("#qwe").stick_in_parent({literal}{offset_top: 50}{/literal});
            });
            
            $("#sidenav a").click(function () {
                $("#sidenav a.active").removeClass("active");
                $(this).addClass("active");
            });
            
            $(window).on('hashchange', function(ev) {
                
                var id = window.location.hash.substr(1);
                
                $(document).stop();
                $(document).scrollTo(document.getElementById(id), 1000);
            });
        </script>
    </body>
</html>