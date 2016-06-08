<?php

require_once './vendor/autoload.php';

$smarty = new Smarty;
$smarty->force_compile = true;
$smarty->assign(array(
    'groups' => array(
        
        (object) array (
            'name' => 'Burgers',
            'products' => array(

                
                (object) array (
                    'image' => 'http://www.nubiarestaurant.com/wp-content/uploads/2015/09/burger_sandwich_1-300x229.jpg',
                    'name' => 'Kipburger',
                    'description' => 'Langzaam gegaarde biologische zalmfilet geserveerd op een hard broodje met huisgemaakte aioli op een bedje van rucola afgegarneerd met rode ui, komkommer en een schijfje citroen.',
                ),
                
                (object) array (
                    'image' => 'http://www.nubiarestaurant.com/wp-content/uploads/2015/09/burger_sandwich_1-300x229.jpg',
                    'name' => 'Zalmburger',
                    'description' => 'Langzaam gegaarde biologische zalmfilet geserveerd op een hard broodje met huisgemaakte aioli op een bedje van rucola afgegarneerd met rode ui, komkommer en een schijfje citroen.',
                ),
                
                (object) array (
                    'image' => 'http://www.nubiarestaurant.com/wp-content/uploads/2015/09/burger_sandwich_1-300x229.jpg',
                    'name' => 'BioBurger',
                    'description' => 'Langzaam gegaarde biologische zalmfilet geserveerd op een hard broodje met huisgemaakte aioli op een bedje van rucola afgegarneerd met rode ui, komkommer en een schijfje citroen.',
                ),
            )
        ),
        
        (object) array (
            'name' => 'Broodjes',
            'products' => array(

                
                (object) array (
                    'image' => 'http://www.nubiarestaurant.com/wp-content/uploads/2015/09/turkey_sub.jpg',
                    'name' => 'Broodje tonijnsalade',
                    'description' => 'Langzaam gegaarde biologische zalmfilet geserveerd op een hard broodje met huisgemaakte aioli op een bedje van rucola afgegarneerd met rode ui, komkommer en een schijfje citroen.'
                )
            )
        ),
        
        (object) array (
            'name' => 'Salades',
            'products' => array(

                
                (object) array (
                    'image' => 'http://www.nubiarestaurant.com/wp-content/uploads/2015/07/salad-plate_1-300x213.jpg',
                    'name' => 'Summer Salad (Seizoensgebonden)',
                    'description' => 'Frisse salade bestaande uit gemengde sla met aardbeien, avocado en pecannoten geserveerd met een zoete appel-citroen dressing.'
                )
            )
        ),
        
        (object) array (
            'name' => 'Soepen',
            'products' => array(

                
                (object) array (
                    'image' => '',
                    'name' => '',
                    'description' => ''
                )
            )
        ),
        
        (object) array (
            'name' => 'Smoothies',
            'products' => array(

                
                (object) array (
                    'image' => '',
                    'name' => '',
                    'description' => ''
                )
            )
        ),
        
        (object) array (
            'name' => 'Fruit',
            'products' => array(

                
                (object) array (
                    'image' => '',
                    'name' => '',
                    'description' => ''
                )
            )
        ),
    )
));


$smarty->display('views/home.tpl');