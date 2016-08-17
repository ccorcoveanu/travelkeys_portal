{extends file='layouts/layout-main.tpl'}
{block name='content'}
    <article class="hero hero--secondary">
        <div class="container">
            <div class="hero__container hero--secondary__container">
                <h1 class="hero__title hero--secondary__title">Useful information on <br/>{$location->name}</h1>
            </div>
        </div>
    </article>
    <!-- End Hero -->
    <article id="destination-welcome" class="section welcome -style-pattern">
        <div class="container">
            <a class="button button--next-section -shape-trapezoid" href="#destination-welcome"><i class="icon icon__arrow-down"></i></a>
            <div class="section__container">
                <h5 class="section__subtitle welcome__subtitle">Welcome</h5>
                <p>The sophisticated French island of St. Barthelemy (aka St. Barts) packs a lot into a delightfully small island package.</p>
                <p>The cuisine ranks among the Caribbean's best, and almost everything is stylish, from the chic boutiques in the capital, Gustavia, to the private red-roofed villas that dot the hillsides.</p>
            </div>
        </div>
        <div class="location">
            <div class="location__item">
                <i class="icon icon__airplane"></i>
                <span class="location__item__text">Gustaf III<br/>SBH</span>
            </div>
            <div class="location__item">
                <i class="icon icon__temperature"></i>
                <span class="location__item__text">73 F<br/>23 C</span>
            </div>
            <div class="location__item">
                <i class="icon icon__rain"></i>
                <span class="location__item__text">40 in<br/>101 cm</span>
            </div>
            <div class="location__item">
                <i class="icon icon__attractions"></i>
                <span class="location__item__text">St. Barts Regatta<br/>St. Jean Beach</span>
            </div>
        </div>
    </article>
    <article class="js-tabs-section section information">
        <div class="js-tabs-container quick-nav__container">
            <div class="js-tabs-wrapper quick-nav__wrapper -hidden">
                <h5 class="quick-nav__title">Quick jump to:</h5>
                <ul class="quick-nav">
                    <li class="quick-nav__item">
                        <a href="#" title="General info" class="js-tab-button quick-nav__text" data-tab="tab-general">General info</a>
                        <span class="quick-nav__bullet"></span>
                    </li>
                    <li class="quick-nav__item">
                        <a href="#" title="Restaurants" class="js-tab-button quick-nav__text" data-tab="tab-restaurants">Restaurants</a>
                        <span class="quick-nav__bullet"></span>
                    </li>
                    <li class="quick-nav__item">
                        <a href="#" title="History" class="js-tab-button quick-nav__text" data-tab="tab-history">History</a>
                        <span class="quick-nav__bullet"></span>
                    </li>
                    <li class="quick-nav__item">
                        <a href="#" title="Gold" class="js-tab-button quick-nav__text" data-tab="tab-golf">Golf</a>
                        <span class="quick-nav__bullet"></span>
                    </li>
                    <li class="quick-nav__item">
                        <a href="#" title="Airport" class="js-tab-button quick-nav__text" data-tab="tab-airport">Airport</a>
                        <span class="quick-nav__bullet"></span>
                    </li>
                    <li class="quick-nav__item">
                        <a href="#" title="Watersports" class="js-tab-button quick-nav__text" data-tab="tab-watersports">Watersports</a>
                        <span class="quick-nav__bullet"></span>
                    </li>
                    <li class="quick-nav__item -is-current">
                        <a href="#" title="Communications" class="js-tab-button quick-nav__text" data-tab="tab-communications">Communications</a>
                        <span class="quick-nav__bullet"></span>
                    </li>
                    <li class="quick-nav__item">
                        <a href="#" title="Nightlife" class="js-tab-button quick-nav__text" data-tab="tab-nightlife">Nightlife</a>
                        <span class="quick-nav__bullet"></span>
                    </li>
                    <li class="quick-nav__item">
                        <a href="#" title="Car rental" class="js-tab-button quick-nav__text" data-tab="tab-rentals">Car rental</a>
                        <span class="quick-nav__bullet"></span>
                    </li>
                    <li class="quick-nav__item">
                        <a href="#" title="Weddings" class="js-tab-button quick-nav__text" data-tab="tab-weddings">Weddings</a>
                        <span class="quick-nav__bullet"></span>
                    </li>
                    <li class="quick-nav__item">
                        <a href="#" title="Shopping" class="js-tab-button quick-nav__text" data-tab="tab-shopping">Shopping</a>
                        <span class="quick-nav__bullet"></span>
                    </li>
                    <li class="quick-nav__item">
                        <a href="#" title="Sights" class="js-tab-button quick-nav__text" data-tab="tab-sights">Sights</a>
                        <span class="quick-nav__bullet"></span>
                    </li>
                    <li class="quick-nav__item">
                        <a class="quick-nav__jump-to" href="#" title="View 1122 villas in St. Barts">View 1122 villas in <br> St. Barts</a>
                    </li>
                </ul>
            </div>
            <div class="js-tabs-open">
                <a class="js-tabs-open-container quick-nav__open" href="#">
                    <h2 class="quick-nav__open__text">Show info about:<span class="js-tabs-title"></span></h2>
                    <i class="icon icon__arrow-down-long"></i>
                </a>
            </div>
        </div>
        <div class="container -position-right">
            <div id="tab-communications" class="js-tab information__tab -is-current">
                <div class="information__header">
                    <h2 class="information__title">Communications</h2>
                    <p>Guests to St. Barts who wish to stay in touch with the latest news, St. Barts local as well as international affairs, will not have a hard time while on vacation.</p>
                    <p>For those seeking a bit of local French language news, St. Barts' official periodical - <span class="-color-blue">Le Journal de St. Barth</span>, is a weekly publication offering all the latest affairs on-island. Many guests to the island are not able to speak French but there are many other ways of keeping abreast of the news. St. Barts prints a number of monthly and annual magazines that are geared towards American visitors to the island.</p>
                    <p>These periodicals feature both French and English articles, making the island more inviting to those who lack the language. Many of these publications are free and contain useful information for guests to St. Barts. New visitors to St. Barts will find helpful hints such as restaurants, points of interest, and cultural news. St. Barts tourist centers and magazine shops may also carry some of the more well-known international newspapers.</p>
                    <p>For guests who prefer online source of news, St. Barts telecommunications are equipped to hook up short-term visitors with a temporary dial-up internet connection. The service is offered by Power Antilles, a local provider based on the French side of St. Martin, who will set up any laptop with an account. With an internet connection, any news, St. Barts or otherwise, is at your fingertips.</p>
                </div>
                <div class="information__body">
                    <div class="information__section">
                        <h3 class="information__subtitle">Cellular Phones</h3>
                        <div class="information__wrapper">
                            <p>If you bring a cell phone to the island and wish to activate it for local use, visit St. Barth Electronique across from the airport, as many alternatives are possible depending on your service plan.</p>
                            <p>Public telephones do not accept coins; they accept telecartes, prepaid calling cards that you can purchase at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">St. Barts Villa Communications</h3>
                        <div class="information__wrapper">
                            <p>The villas are all equipped with telephones and guests will be advised of the particular phone number of the property prior to departure.</p>
                            <p>Please do note that none of the properties have an open international line. International calls can be made with ATT and MCI cards.</p>
                            <p>Phone cards or telecartes can be purchased at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Electricity</h3>
                        <div class="information__wrapper">
                            <p><strong>220 Volts</strong>
                            </p>
                            <p>Adapters are necessary for visitors from North America.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Fax machines</h3>
                        <div class="information__wrapper">
                            <p>Many of the villas come equipped with a Fax machine.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Internet cafes / Connections</h3>
                        <div class="information__wrapper">
                            <p>Centre Alizes on rue de la Republique in Gustavia provides Internet access. Some of the villas will allow you to establish a laptop internet connection.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="tab-rentals" class="js-tab information__tab">
                <div class="information__header">
                    <h2 class="information__title">Car Rentals</h2>
                    <p>Guests to St. Barts who wish to stay in touch with the latest news, St. Barts local as well as international affairs, will not have a hard time while on vacation.</p>
                    <p>For those seeking a bit of local French language news, St. Barts' official periodical - <span class="-color-blue">Le Journal de St. Barth</span>, is a weekly publication offering all the latest affairs on-island. Many guests to the island are not able to speak French but there are many other ways of keeping abreast of the news. St. Barts prints a number of monthly and annual magazines that are geared towards American visitors to the island.</p>
                    <p>These periodicals feature both French and English articles, making the island more inviting to those who lack the language. Many of these publications are free and contain useful information for guests to St. Barts. New visitors to St. Barts will find helpful hints such as restaurants, points of interest, and cultural news. St. Barts tourist centers and magazine shops may also carry some of the more well-known international newspapers.</p>
                    <p>For guests who prefer online source of news, St. Barts telecommunications are equipped to hook up short-term visitors with a temporary dial-up internet connection. The service is offered by Power Antilles, a local provider based on the French side of St. Martin, who will set up any laptop with an account. With an internet connection, any news, St. Barts or otherwise, is at your fingertips.</p>
                </div>
                <div class="information__body">
                    <div class="information__section">
                        <h3 class="information__subtitle">Cellular Phones</h3>
                        <div class="information__wrapper">
                            <p>If you bring a cell phone to the island and wish to activate it for local use, visit St. Barth Electronique across from the airport, as many alternatives are possible depending on your service plan.</p>
                            <p>Public telephones do not accept coins; they accept telecartes, prepaid calling cards that you can purchase at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">St. Barts Villa Communications</h3>
                        <div class="information__wrapper">
                            <p>The villas are all equipped with telephones and guests will be advised of the particular phone number of the property prior to departure.</p>
                            <p>Please do note that none of the properties have an open international line. International calls can be made with ATT and MCI cards.</p>
                            <p>Phone cards or telecartes can be purchased at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Electricity</h3>
                        <div class="information__wrapper">
                            <p><strong>220 Volts</strong>
                            </p>
                            <p>Adapters are necessary for visitors from North America.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Fax machines</h3>
                        <div class="information__wrapper">
                            <p>Many of the villas come equipped with a Fax machine.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Internet cafes / Connections</h3>
                        <div class="information__wrapper">
                            <p>Centre Alizes on rue de la Republique in Gustavia provides Internet access. Some of the villas will allow you to establish a laptop internet connection.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="tab-nightlife" class="js-tab information__tab">
                <div class="information__header">
                    <h2 class="information__title">Nightlife</h2>
                    <p>Guests to St. Barts who wish to stay in touch with the latest news, St. Barts local as well as international affairs, will not have a hard time while on vacation.</p>
                    <p>For those seeking a bit of local French language news, St. Barts' official periodical - <span class="-color-blue">Le Journal de St. Barth</span>, is a weekly publication offering all the latest affairs on-island. Many guests to the island are not able to speak French but there are many other ways of keeping abreast of the news. St. Barts prints a number of monthly and annual magazines that are geared towards American visitors to the island.</p>
                    <p>These periodicals feature both French and English articles, making the island more inviting to those who lack the language. Many of these publications are free and contain useful information for guests to St. Barts. New visitors to St. Barts will find helpful hints such as restaurants, points of interest, and cultural news. St. Barts tourist centers and magazine shops may also carry some of the more well-known international newspapers.</p>
                    <p>For guests who prefer online source of news, St. Barts telecommunications are equipped to hook up short-term visitors with a temporary dial-up internet connection. The service is offered by Power Antilles, a local provider based on the French side of St. Martin, who will set up any laptop with an account. With an internet connection, any news, St. Barts or otherwise, is at your fingertips.</p>
                </div>
                <div class="information__body">
                    <div class="information__section">
                        <h3 class="information__subtitle">Cellular Phones</h3>
                        <div class="information__wrapper">
                            <p>If you bring a cell phone to the island and wish to activate it for local use, visit St. Barth Electronique across from the airport, as many alternatives are possible depending on your service plan.</p>
                            <p>Public telephones do not accept coins; they accept telecartes, prepaid calling cards that you can purchase at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">St. Barts Villa Communications</h3>
                        <div class="information__wrapper">
                            <p>The villas are all equipped with telephones and guests will be advised of the particular phone number of the property prior to departure.</p>
                            <p>Please do note that none of the properties have an open international line. International calls can be made with ATT and MCI cards.</p>
                            <p>Phone cards or telecartes can be purchased at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Electricity</h3>
                        <div class="information__wrapper">
                            <p><strong>220 Volts</strong>
                            </p>
                            <p>Adapters are necessary for visitors from North America.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Fax machines</h3>
                        <div class="information__wrapper">
                            <p>Many of the villas come equipped with a Fax machine.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Internet cafes / Connections</h3>
                        <div class="information__wrapper">
                            <p>Centre Alizes on rue de la Republique in Gustavia provides Internet access. Some of the villas will allow you to establish a laptop internet connection.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="tab-general" class="js-tab information__tab">
                <div class="information__header">
                    <h2 class="information__title">General Info</h2>
                    <p>Guests to St. Barts who wish to stay in touch with the latest news, St. Barts local as well as international affairs, will not have a hard time while on vacation.</p>
                    <p>For those seeking a bit of local French language news, St. Barts' official periodical - <span class="-color-blue">Le Journal de St. Barth</span>, is a weekly publication offering all the latest affairs on-island. Many guests to the island are not able to speak French but there are many other ways of keeping abreast of the news. St. Barts prints a number of monthly and annual magazines that are geared towards American visitors to the island.</p>
                    <p>These periodicals feature both French and English articles, making the island more inviting to those who lack the language. Many of these publications are free and contain useful information for guests to St. Barts. New visitors to St. Barts will find helpful hints such as restaurants, points of interest, and cultural news. St. Barts tourist centers and magazine shops may also carry some of the more well-known international newspapers.</p>
                    <p>For guests who prefer online source of news, St. Barts telecommunications are equipped to hook up short-term visitors with a temporary dial-up internet connection. The service is offered by Power Antilles, a local provider based on the French side of St. Martin, who will set up any laptop with an account. With an internet connection, any news, St. Barts or otherwise, is at your fingertips.</p>
                </div>
                <div class="information__body">
                    <div class="information__section">
                        <h3 class="information__subtitle">Cellular Phones</h3>
                        <div class="information__wrapper">
                            <p>If you bring a cell phone to the island and wish to activate it for local use, visit St. Barth Electronique across from the airport, as many alternatives are possible depending on your service plan.</p>
                            <p>Public telephones do not accept coins; they accept telecartes, prepaid calling cards that you can purchase at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">St. Barts Villa Communications</h3>
                        <div class="information__wrapper">
                            <p>The villas are all equipped with telephones and guests will be advised of the particular phone number of the property prior to departure.</p>
                            <p>Please do note that none of the properties have an open international line. International calls can be made with ATT and MCI cards.</p>
                            <p>Phone cards or telecartes can be purchased at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Electricity</h3>
                        <div class="information__wrapper">
                            <p><strong>220 Volts</strong>
                            </p>
                            <p>Adapters are necessary for visitors from North America.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Fax machines</h3>
                        <div class="information__wrapper">
                            <p>Many of the villas come equipped with a Fax machine.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Internet cafes / Connections</h3>
                        <div class="information__wrapper">
                            <p>Centre Alizes on rue de la Republique in Gustavia provides Internet access. Some of the villas will allow you to establish a laptop internet connection.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="tab-restaurants" class="js-tab information__tab">
                <div class="information__header">
                    <h2 class="information__title">Restaurants</h2>
                    <p>Guests to St. Barts who wish to stay in touch with the latest news, St. Barts local as well as international affairs, will not have a hard time while on vacation.</p>
                    <p>For those seeking a bit of local French language news, St. Barts' official periodical - <span class="-color-blue">Le Journal de St. Barth</span>, is a weekly publication offering all the latest affairs on-island. Many guests to the island are not able to speak French but there are many other ways of keeping abreast of the news. St. Barts prints a number of monthly and annual magazines that are geared towards American visitors to the island.</p>
                    <p>These periodicals feature both French and English articles, making the island more inviting to those who lack the language. Many of these publications are free and contain useful information for guests to St. Barts. New visitors to St. Barts will find helpful hints such as restaurants, points of interest, and cultural news. St. Barts tourist centers and magazine shops may also carry some of the more well-known international newspapers.</p>
                    <p>For guests who prefer online source of news, St. Barts telecommunications are equipped to hook up short-term visitors with a temporary dial-up internet connection. The service is offered by Power Antilles, a local provider based on the French side of St. Martin, who will set up any laptop with an account. With an internet connection, any news, St. Barts or otherwise, is at your fingertips.</p>
                </div>
                <div class="information__body">
                    <div class="information__section">
                        <h3 class="information__subtitle">Cellular Phones</h3>
                        <div class="information__wrapper">
                            <p>If you bring a cell phone to the island and wish to activate it for local use, visit St. Barth Electronique across from the airport, as many alternatives are possible depending on your service plan.</p>
                            <p>Public telephones do not accept coins; they accept telecartes, prepaid calling cards that you can purchase at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">St. Barts Villa Communications</h3>
                        <div class="information__wrapper">
                            <p>The villas are all equipped with telephones and guests will be advised of the particular phone number of the property prior to departure.</p>
                            <p>Please do note that none of the properties have an open international line. International calls can be made with ATT and MCI cards.</p>
                            <p>Phone cards or telecartes can be purchased at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Electricity</h3>
                        <div class="information__wrapper">
                            <p><strong>220 Volts</strong>
                            </p>
                            <p>Adapters are necessary for visitors from North America.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Fax machines</h3>
                        <div class="information__wrapper">
                            <p>Many of the villas come equipped with a Fax machine.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Internet cafes / Connections</h3>
                        <div class="information__wrapper">
                            <p>Centre Alizes on rue de la Republique in Gustavia provides Internet access. Some of the villas will allow you to establish a laptop internet connection.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="tab-history" class="js-tab information__tab">
                <div class="information__header">
                    <h2 class="information__title">History</h2>
                    <p>Guests to St. Barts who wish to stay in touch with the latest news, St. Barts local as well as international affairs, will not have a hard time while on vacation.</p>
                    <p>For those seeking a bit of local French language news, St. Barts' official periodical - <span class="-color-blue">Le Journal de St. Barth</span>, is a weekly publication offering all the latest affairs on-island. Many guests to the island are not able to speak French but there are many other ways of keeping abreast of the news. St. Barts prints a number of monthly and annual magazines that are geared towards American visitors to the island.</p>
                    <p>These periodicals feature both French and English articles, making the island more inviting to those who lack the language. Many of these publications are free and contain useful information for guests to St. Barts. New visitors to St. Barts will find helpful hints such as restaurants, points of interest, and cultural news. St. Barts tourist centers and magazine shops may also carry some of the more well-known international newspapers.</p>
                    <p>For guests who prefer online source of news, St. Barts telecommunications are equipped to hook up short-term visitors with a temporary dial-up internet connection. The service is offered by Power Antilles, a local provider based on the French side of St. Martin, who will set up any laptop with an account. With an internet connection, any news, St. Barts or otherwise, is at your fingertips.</p>
                </div>
                <div class="information__body">
                    <div class="information__section">
                        <h3 class="information__subtitle">Cellular Phones</h3>
                        <div class="information__wrapper">
                            <p>If you bring a cell phone to the island and wish to activate it for local use, visit St. Barth Electronique across from the airport, as many alternatives are possible depending on your service plan.</p>
                            <p>Public telephones do not accept coins; they accept telecartes, prepaid calling cards that you can purchase at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">St. Barts Villa Communications</h3>
                        <div class="information__wrapper">
                            <p>The villas are all equipped with telephones and guests will be advised of the particular phone number of the property prior to departure.</p>
                            <p>Please do note that none of the properties have an open international line. International calls can be made with ATT and MCI cards.</p>
                            <p>Phone cards or telecartes can be purchased at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Electricity</h3>
                        <div class="information__wrapper">
                            <p><strong>220 Volts</strong>
                            </p>
                            <p>Adapters are necessary for visitors from North America.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Fax machines</h3>
                        <div class="information__wrapper">
                            <p>Many of the villas come equipped with a Fax machine.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Internet cafes / Connections</h3>
                        <div class="information__wrapper">
                            <p>Centre Alizes on rue de la Republique in Gustavia provides Internet access. Some of the villas will allow you to establish a laptop internet connection.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="tab-golf" class="js-tab information__tab">
                <div class="information__header">
                    <h2 class="information__title">Golf</h2>
                    <p>Guests to St. Barts who wish to stay in touch with the latest news, St. Barts local as well as international affairs, will not have a hard time while on vacation.</p>
                    <p>For those seeking a bit of local French language news, St. Barts' official periodical - <span class="-color-blue">Le Journal de St. Barth</span>, is a weekly publication offering all the latest affairs on-island. Many guests to the island are not able to speak French but there are many other ways of keeping abreast of the news. St. Barts prints a number of monthly and annual magazines that are geared towards American visitors to the island.</p>
                    <p>These periodicals feature both French and English articles, making the island more inviting to those who lack the language. Many of these publications are free and contain useful information for guests to St. Barts. New visitors to St. Barts will find helpful hints such as restaurants, points of interest, and cultural news. St. Barts tourist centers and magazine shops may also carry some of the more well-known international newspapers.</p>
                    <p>For guests who prefer online source of news, St. Barts telecommunications are equipped to hook up short-term visitors with a temporary dial-up internet connection. The service is offered by Power Antilles, a local provider based on the French side of St. Martin, who will set up any laptop with an account. With an internet connection, any news, St. Barts or otherwise, is at your fingertips.</p>
                </div>
                <div class="information__body">
                    <div class="information__section">
                        <h3 class="information__subtitle">Cellular Phones</h3>
                        <div class="information__wrapper">
                            <p>If you bring a cell phone to the island and wish to activate it for local use, visit St. Barth Electronique across from the airport, as many alternatives are possible depending on your service plan.</p>
                            <p>Public telephones do not accept coins; they accept telecartes, prepaid calling cards that you can purchase at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">St. Barts Villa Communications</h3>
                        <div class="information__wrapper">
                            <p>The villas are all equipped with telephones and guests will be advised of the particular phone number of the property prior to departure.</p>
                            <p>Please do note that none of the properties have an open international line. International calls can be made with ATT and MCI cards.</p>
                            <p>Phone cards or telecartes can be purchased at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Electricity</h3>
                        <div class="information__wrapper">
                            <p><strong>220 Volts</strong>
                            </p>
                            <p>Adapters are necessary for visitors from North America.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Fax machines</h3>
                        <div class="information__wrapper">
                            <p>Many of the villas come equipped with a Fax machine.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Internet cafes / Connections</h3>
                        <div class="information__wrapper">
                            <p>Centre Alizes on rue de la Republique in Gustavia provides Internet access. Some of the villas will allow you to establish a laptop internet connection.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="tab-airport" class="js-tab information__tab">
                <div class="information__header">
                    <h2 class="information__title">Airport</h2>
                    <p>Guests to St. Barts who wish to stay in touch with the latest news, St. Barts local as well as international affairs, will not have a hard time while on vacation.</p>
                    <p>For those seeking a bit of local French language news, St. Barts' official periodical - <span class="-color-blue">Le Journal de St. Barth</span>, is a weekly publication offering all the latest affairs on-island. Many guests to the island are not able to speak French but there are many other ways of keeping abreast of the news. St. Barts prints a number of monthly and annual magazines that are geared towards American visitors to the island.</p>
                    <p>These periodicals feature both French and English articles, making the island more inviting to those who lack the language. Many of these publications are free and contain useful information for guests to St. Barts. New visitors to St. Barts will find helpful hints such as restaurants, points of interest, and cultural news. St. Barts tourist centers and magazine shops may also carry some of the more well-known international newspapers.</p>
                    <p>For guests who prefer online source of news, St. Barts telecommunications are equipped to hook up short-term visitors with a temporary dial-up internet connection. The service is offered by Power Antilles, a local provider based on the French side of St. Martin, who will set up any laptop with an account. With an internet connection, any news, St. Barts or otherwise, is at your fingertips.</p>
                </div>
                <div class="information__body">
                    <div class="information__section">
                        <h3 class="information__subtitle">Cellular Phones</h3>
                        <div class="information__wrapper">
                            <p>If you bring a cell phone to the island and wish to activate it for local use, visit St. Barth Electronique across from the airport, as many alternatives are possible depending on your service plan.</p>
                            <p>Public telephones do not accept coins; they accept telecartes, prepaid calling cards that you can purchase at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">St. Barts Villa Communications</h3>
                        <div class="information__wrapper">
                            <p>The villas are all equipped with telephones and guests will be advised of the particular phone number of the property prior to departure.</p>
                            <p>Please do note that none of the properties have an open international line. International calls can be made with ATT and MCI cards.</p>
                            <p>Phone cards or telecartes can be purchased at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Electricity</h3>
                        <div class="information__wrapper">
                            <p><strong>220 Volts</strong>
                            </p>
                            <p>Adapters are necessary for visitors from North America.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Fax machines</h3>
                        <div class="information__wrapper">
                            <p>Many of the villas come equipped with a Fax machine.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Internet cafes / Connections</h3>
                        <div class="information__wrapper">
                            <p>Centre Alizes on rue de la Republique in Gustavia provides Internet access. Some of the villas will allow you to establish a laptop internet connection.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="tab-watersports" class="js-tab information__tab">
                <div class="information__header">
                    <h2 class="information__title">Watersports</h2>
                    <p>Guests to St. Barts who wish to stay in touch with the latest news, St. Barts local as well as international affairs, will not have a hard time while on vacation.</p>
                    <p>For those seeking a bit of local French language news, St. Barts' official periodical - <span class="-color-blue">Le Journal de St. Barth</span>, is a weekly publication offering all the latest affairs on-island. Many guests to the island are not able to speak French but there are many other ways of keeping abreast of the news. St. Barts prints a number of monthly and annual magazines that are geared towards American visitors to the island.</p>
                    <p>These periodicals feature both French and English articles, making the island more inviting to those who lack the language. Many of these publications are free and contain useful information for guests to St. Barts. New visitors to St. Barts will find helpful hints such as restaurants, points of interest, and cultural news. St. Barts tourist centers and magazine shops may also carry some of the more well-known international newspapers.</p>
                    <p>For guests who prefer online source of news, St. Barts telecommunications are equipped to hook up short-term visitors with a temporary dial-up internet connection. The service is offered by Power Antilles, a local provider based on the French side of St. Martin, who will set up any laptop with an account. With an internet connection, any news, St. Barts or otherwise, is at your fingertips.</p>
                </div>
                <div class="information__body">
                    <div class="information__section">
                        <h3 class="information__subtitle">Cellular Phones</h3>
                        <div class="information__wrapper">
                            <p>If you bring a cell phone to the island and wish to activate it for local use, visit St. Barth Electronique across from the airport, as many alternatives are possible depending on your service plan.</p>
                            <p>Public telephones do not accept coins; they accept telecartes, prepaid calling cards that you can purchase at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">St. Barts Villa Communications</h3>
                        <div class="information__wrapper">
                            <p>The villas are all equipped with telephones and guests will be advised of the particular phone number of the property prior to departure.</p>
                            <p>Please do note that none of the properties have an open international line. International calls can be made with ATT and MCI cards.</p>
                            <p>Phone cards or telecartes can be purchased at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Electricity</h3>
                        <div class="information__wrapper">
                            <p><strong>220 Volts</strong>
                            </p>
                            <p>Adapters are necessary for visitors from North America.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Fax machines</h3>
                        <div class="information__wrapper">
                            <p>Many of the villas come equipped with a Fax machine.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Internet cafes / Connections</h3>
                        <div class="information__wrapper">
                            <p>Centre Alizes on rue de la Republique in Gustavia provides Internet access. Some of the villas will allow you to establish a laptop internet connection.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="tab-weddings" class="js-tab information__tab">
                <div class="information__header">
                    <h2 class="information__title">Weddings</h2>
                    <p>Guests to St. Barts who wish to stay in touch with the latest news, St. Barts local as well as international affairs, will not have a hard time while on vacation.</p>
                    <p>For those seeking a bit of local French language news, St. Barts' official periodical - <span class="-color-blue">Le Journal de St. Barth</span>, is a weekly publication offering all the latest affairs on-island. Many guests to the island are not able to speak French but there are many other ways of keeping abreast of the news. St. Barts prints a number of monthly and annual magazines that are geared towards American visitors to the island.</p>
                    <p>These periodicals feature both French and English articles, making the island more inviting to those who lack the language. Many of these publications are free and contain useful information for guests to St. Barts. New visitors to St. Barts will find helpful hints such as restaurants, points of interest, and cultural news. St. Barts tourist centers and magazine shops may also carry some of the more well-known international newspapers.</p>
                    <p>For guests who prefer online source of news, St. Barts telecommunications are equipped to hook up short-term visitors with a temporary dial-up internet connection. The service is offered by Power Antilles, a local provider based on the French side of St. Martin, who will set up any laptop with an account. With an internet connection, any news, St. Barts or otherwise, is at your fingertips.</p>
                </div>
                <div class="information__body">
                    <div class="information__section">
                        <h3 class="information__subtitle">Cellular Phones</h3>
                        <div class="information__wrapper">
                            <p>If you bring a cell phone to the island and wish to activate it for local use, visit St. Barth Electronique across from the airport, as many alternatives are possible depending on your service plan.</p>
                            <p>Public telephones do not accept coins; they accept telecartes, prepaid calling cards that you can purchase at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">St. Barts Villa Communications</h3>
                        <div class="information__wrapper">
                            <p>The villas are all equipped with telephones and guests will be advised of the particular phone number of the property prior to departure.</p>
                            <p>Please do note that none of the properties have an open international line. International calls can be made with ATT and MCI cards.</p>
                            <p>Phone cards or telecartes can be purchased at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Electricity</h3>
                        <div class="information__wrapper">
                            <p><strong>220 Volts</strong>
                            </p>
                            <p>Adapters are necessary for visitors from North America.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Fax machines</h3>
                        <div class="information__wrapper">
                            <p>Many of the villas come equipped with a Fax machine.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Internet cafes / Connections</h3>
                        <div class="information__wrapper">
                            <p>Centre Alizes on rue de la Republique in Gustavia provides Internet access. Some of the villas will allow you to establish a laptop internet connection.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="tab-shopping" class="js-tab information__tab">
                <div class="information__header">
                    <h2 class="information__title">Shopping</h2>
                    <p>Guests to St. Barts who wish to stay in touch with the latest news, St. Barts local as well as international affairs, will not have a hard time while on vacation.</p>
                    <p>For those seeking a bit of local French language news, St. Barts' official periodical - <span class="-color-blue">Le Journal de St. Barth</span>, is a weekly publication offering all the latest affairs on-island. Many guests to the island are not able to speak French but there are many other ways of keeping abreast of the news. St. Barts prints a number of monthly and annual magazines that are geared towards American visitors to the island.</p>
                    <p>These periodicals feature both French and English articles, making the island more inviting to those who lack the language. Many of these publications are free and contain useful information for guests to St. Barts. New visitors to St. Barts will find helpful hints such as restaurants, points of interest, and cultural news. St. Barts tourist centers and magazine shops may also carry some of the more well-known international newspapers.</p>
                    <p>For guests who prefer online source of news, St. Barts telecommunications are equipped to hook up short-term visitors with a temporary dial-up internet connection. The service is offered by Power Antilles, a local provider based on the French side of St. Martin, who will set up any laptop with an account. With an internet connection, any news, St. Barts or otherwise, is at your fingertips.</p>
                </div>
                <div class="information__body">
                    <div class="information__section">
                        <h3 class="information__subtitle">Cellular Phones</h3>
                        <div class="information__wrapper">
                            <p>If you bring a cell phone to the island and wish to activate it for local use, visit St. Barth Electronique across from the airport, as many alternatives are possible depending on your service plan.</p>
                            <p>Public telephones do not accept coins; they accept telecartes, prepaid calling cards that you can purchase at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">St. Barts Villa Communications</h3>
                        <div class="information__wrapper">
                            <p>The villas are all equipped with telephones and guests will be advised of the particular phone number of the property prior to departure.</p>
                            <p>Please do note that none of the properties have an open international line. International calls can be made with ATT and MCI cards.</p>
                            <p>Phone cards or telecartes can be purchased at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Electricity</h3>
                        <div class="information__wrapper">
                            <p><strong>220 Volts</strong>
                            </p>
                            <p>Adapters are necessary for visitors from North America.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Fax machines</h3>
                        <div class="information__wrapper">
                            <p>Many of the villas come equipped with a Fax machine.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Internet cafes / Connections</h3>
                        <div class="information__wrapper">
                            <p>Centre Alizes on rue de la Republique in Gustavia provides Internet access. Some of the villas will allow you to establish a laptop internet connection.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="tab-sights" class="js-tab information__tab">
                <div class="information__header">
                    <h2 class="information__title">Sights</h2>
                    <p>Guests to St. Barts who wish to stay in touch with the latest news, St. Barts local as well as international affairs, will not have a hard time while on vacation.</p>
                    <p>For those seeking a bit of local French language news, St. Barts' official periodical - <span class="-color-blue">Le Journal de St. Barth</span>, is a weekly publication offering all the latest affairs on-island. Many guests to the island are not able to speak French but there are many other ways of keeping abreast of the news. St. Barts prints a number of monthly and annual magazines that are geared towards American visitors to the island.</p>
                    <p>These periodicals feature both French and English articles, making the island more inviting to those who lack the language. Many of these publications are free and contain useful information for guests to St. Barts. New visitors to St. Barts will find helpful hints such as restaurants, points of interest, and cultural news. St. Barts tourist centers and magazine shops may also carry some of the more well-known international newspapers.</p>
                    <p>For guests who prefer online source of news, St. Barts telecommunications are equipped to hook up short-term visitors with a temporary dial-up internet connection. The service is offered by Power Antilles, a local provider based on the French side of St. Martin, who will set up any laptop with an account. With an internet connection, any news, St. Barts or otherwise, is at your fingertips.</p>
                </div>
                <div class="information__body">
                    <div class="information__section">
                        <h3 class="information__subtitle">Cellular Phones</h3>
                        <div class="information__wrapper">
                            <p>If you bring a cell phone to the island and wish to activate it for local use, visit St. Barth Electronique across from the airport, as many alternatives are possible depending on your service plan.</p>
                            <p>Public telephones do not accept coins; they accept telecartes, prepaid calling cards that you can purchase at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">St. Barts Villa Communications</h3>
                        <div class="information__wrapper">
                            <p>The villas are all equipped with telephones and guests will be advised of the particular phone number of the property prior to departure.</p>
                            <p>Please do note that none of the properties have an open international line. International calls can be made with ATT and MCI cards.</p>
                            <p>Phone cards or telecartes can be purchased at the gas station next to the airport or at post offices.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Electricity</h3>
                        <div class="information__wrapper">
                            <p><strong>220 Volts</strong>
                            </p>
                            <p>Adapters are necessary for visitors from North America.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Fax machines</h3>
                        <div class="information__wrapper">
                            <p>Many of the villas come equipped with a Fax machine.</p>
                        </div>
                    </div>
                    <div class="information__section">
                        <h3 class="information__subtitle">Internet cafes / Connections</h3>
                        <div class="information__wrapper">
                            <p>Centre Alizes on rue de la Republique in Gustavia provides Internet access. Some of the villas will allow you to establish a laptop internet connection.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </article>
    <article class="section message -style-pattern -border-bottom">
        <div class="form__container">
            <h5 class="section__subtitle message__subtitle">Tell us how</h5>
            <h2 class="section__title message__title">Can we assist you?</h2>
            <p>Wether you have a comment or suggestion about our company or website, please let us know.</p>
            <p>If you are seeking a property rental, please feel free to <a href="#" class="link -color-aqua">browse our collection of villas</a> or simply complete the form below to begin the process.</p>
            <form class="form--letter form--letter-alt filter">
                <div class="form--letter__wrapper">
                    <div class="form--letter__input__container -half-width">
                        <label class="form--letter__label">First name:</label>
                        <input class="form--letter__input" type="text" name="firstname">
                    </div>
                    <div class="form--letter__input__container -half-width">
                        <label class="form--letter__label">Last name:</label>
                        <input class="form--letter__input" type="text" name="lastname">
                    </div>
                    <div class="form--letter__input__container -half-width">
                        <label class="form--letter__label">Phone:</label>
                        <input class="form--letter__input" type="tel" name="yourphone">
                    </div>
                    <div class="form--letter__input__container -half-width">
                        <label class="form--letter__label">Email:</label>
                        <input class="form--letter__input" type="email" name="youremail">
                    </div>
                </div>
                <div class="form--letter__input__container -has-textarea">
                    <label class="form--letter__label">Your message for us:</label>
                    <textarea class="js-textarea form--letter__input -anchor-textarea" name="villadescription" rows="3"></textarea>
                </div>
                <button class="button form--letter__button">Send your request</button>
            </form>
        </div>
    </article>
{/block}