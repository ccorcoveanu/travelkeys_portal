{extends file='layouts/layout-main.tpl'}
{block name='content'}
    <article class="hero hero--secondary">
        <div class="container">
            <div class="hero__container hero--secondary__container">
                <h1 class="hero__title hero--secondary__title">OUR specialists are on the ground to assist you</h1>
                <i class="icon icon__hands hero--secondary__icon"></i>
                <h2 class="hero__subtitle hero--secondary__subtitle">In over 90 destinations worldwide.</h2>
            </div>
        </div>
    </article>
    <!-- End Hero -->
    <article class="js-tabs-section js-tabs-start section information -style-pattern -color-light">
        {include file="_partials/navigation/quicknav.tpl"}
        <div class="container -position-right">
            <div class="information__header -no-margin-bottom">
                <h5 class="section__subtitle information__subtitle">Meet Our</h5>
                <h2 class="section__title information__title">Featured Specialists</h2>
                <p>One of the unique strengths of Travel Keys is our international network of villa and concierge specialists. Locally-based agents ensure that our guests are provided with the highest levels of service and expertise across our many global destinations.</p>
                <p>Our team of specialists travel the world to guarantee you find not only the best villa, but also the best vacation experience in a given destination.</p>
                <p><strong>Our experts are located in many of our TOP DESTINATIONS throughout the world and remain ready to assist.</strong></p>
            </div>
        </div>
    </article>
    <article class="section information -style-pattern">
        <div class="container -position-right">
            <div class="information__header">
                <h5 class="section__subtitle information__subtitle">Introducing</h5>
                <h2 class="section__title information__title -color-white">Our Executive Team</h2>
            </div>
            <div class="team">
                <div class="container">
                    <article class="team__member">
                        <div class="team__member__avatar__container">
                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/bobby_gibson.jpg" alt="Bobby Gibson | Chief Executive Officer">
                        </div>
                        <div class="team__member__text">
                            <h2 class="team__member__name">Bobby Gibson</h2>
                            <h3 class="team__member__title">Chief Executive Officer</h3>
                            <p>An experienced entrepreneur, Bobby has helped to drive a business founded by his parents from an established leader in the luxury Caribbean villa rental market to one of the largest luxury villa rental marketplaces in the world.</p>
                            <p>Bobby served on the Expedia Specialty Lodging Advisory board for several years and has earned numerous awards for entrepreneurship. Bobby graduated from the University of Pennsylvania.</p>
                        </div>
                    </article>
                    <article class="team__member">
                        <div class="team__member__avatar__container">
                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/bryan_leblang.jpg" alt="Bryan Leblang | Chief Operating Officer">
                        </div>
                        <div class="team__member__text">
                            <h2 class="team__member__name">Bryan Leblang</h2>
                            <h3 class="team__member__title">Chief Operating Officer</h3>
                            <p>Bryan is a seasoned hospitality professional, honing his skillset with experience at premier properties including the Mandarin Oriental Hotel Group and Deer Valley Resort before joining TravelKeys in 2005 to help lead operations. Having extensively toured the world, he is familiar with luxury travel destinations on all continents and has visited over 50 countries during his tenure, expanding the reach of TravelKeys global collection. Bryan is a graduate of the University of Pennsylvania.</p>
                        </div>
                    </article>
                    <article class="team__member">
                        <div class="team__member__avatar__container">
                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/stewart_caughman.jpg" alt="Nicolas Meakins | Chief Intelligence Officer">
                        </div>
                        <div class="team__member__text">
                            <h2 class="team__member__name">Stewart Caughman</h2>
                            <h3 class="team__member__title">SENIOR VP SALES DEPARTMENT</h3>
                            <p>As Senior Vice President of Sales, Stewart oversees our global Villa Specialist team and serves as director of supplier relations. With 10+ years in the villa marketplace, Stewart has an extensive knowledge of the Travel Keys collection, covering over 5000 properties worldwide. He is an experienced world traveler and looks to utilize his knowledge of the vacation rental industry to provide Travel Keys’ guests with the most experienced destination consultants, ensuring that you may have the villa experience of a lifetime.</p>
                        </div>
                    </article>

                    <article class="team__member">
                        <div class="team__member__avatar__container">
                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/nicolas_meakins.jpg" alt="Nicolas Meakins | Chief Intelligence Officer">
                        </div>
                        <div class="team__member__text">
                            <h2 class="team__member__name">Nicolas Meakins</h2>
                            <h3 class="team__member__title">CHIEF INTELLIGENCE OFFICER</h3>
                            <p>Nicolas joins TravelKeys bringing a decade of experience in the villa industry with him, in which time he pioneered successful Guest Relations, Business Development, Staff Training and Business Intelligence initiatives. His love for travel is second to none and has brought him around the world, living in exotic countries such as Argentina, Ghana, India, and presently the BVI (Virgin Gorda).</p>
                            <p>Nic’s focus at TravelKeys revolves around improving internal efficiencies/systems whilst maintaining a focus on delivering the perfect guest experience, along with analysis and interpretation of big data to identify actionable items and make informed business decisions that drive results.</p>
                        </div>
                    </article>

                    <article class="team__member">
                        <div class="team__member__avatar__container">
                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/michele_snakovsky.jpg" alt="Nicolas Meakins | Chief Intelligence Officer">
                        </div>
                        <div class="team__member__text">
                            <h2 class="team__member__name">Michele Snakovsky</h2>
                            <h3 class="team__member__title">DIRECTOR OF CONCIERGE SERVICES</h3>
                            <p>"Not all who wander are lost". With this mantra in mind and a zeal for adventure, Michele offers over 15 years of industry experience. Initially joining Travel Keys' Sales Department more than 10 years ago, Michele moved to the Concierge Department in 2008 and never looked back. In 2009, she was promoted to Concierge Director. Today, she still believes Villa Vacations are Tourism's "best kept secret" and the greatest way to immerse oneself in any destination. Michele remains impassioned while helping guests create "once in a lifetime" memories and true luxury experiences.</p>
                        </div>
                    </article>

                    <div class="information__header">
                        <h5 class="section__subtitle information__subtitle">Meet Our</h5>
                        <h2 class="section__title information__title -color-white">Featured Villa Specialists</h2>
                    </div>
                    <div class="team__carousel__container">
                        <div class="js-team-carousel team team__carousel">
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="http://cdn.travelkeys.com/sites/default/files/images/agents/denise_large.png?obbgnm" alt="Denise">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Denise</h2>
                                    <h3 class="team__member__title">Hawaii Sales Director<br> Maui, Hawaii, USA</h3>
                                    <p>Working from the Hawaiian Islands, Denise is able to provide exemplary local insight and service. Denise specializes in Hawaii (Maui, Kauai, Oahu, and Big Island) but also closely oversees interest in other USA destinations like Napa Valley, Lake Tahoe and more.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="http://cdn.travelkeys.com/sites/default/files/images/agents/zach_large.png?obbgnm" alt="Zach">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Zach</h2>
                                    <h3 class="team__member__title">Villa Specialist<br> Palm Springs, California, USA</h3>
                                    <p>Situated in the heart of our California collection, Zach is immersed in the pace and culture of Southern California. Zachâ€™s location enables him to better serve our West-Coast guests and allows easy travel to our West-Coast accessible destinations like Hawaii, Cabo San Lucas, Puerto Vallarta, Colorado, Utah, and more.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="http://cdn.travelkeys.com/sites/default/files/images/agents/allegra_large.png?obbgnm" alt="Allegra">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Allegra</h2>
                                    <h3 class="team__member__title">Villa Specialist<br> Boston, Massachusetts, USA</h3>
                                    <p>Allegra was bitten by the travel bug after a summerâ€™s long trip through Europe following college. Having majored in art history, she instantly fell in love with Florence, Italy.  After that trip, she just knew she HAD to work in the travel business. While working for a world renowned architect as his personal assistant, she worked part time for a villa rental company in Tuscany and knew this was her calling â€“ combining her two favorite things â€“ travel AND Italy. After more world exploration (one needs to experience other places, right?), she parlayed this experience into a position with a villa rental company in New England, a villa company on the island of St Barth and then later a custom travel planning business of her own with a focus on Italy. After having been in the travel business for over 17 years and traveled all over the northern and eastern hemispheres, Allegra has carved out a niche with specialized knowledge of destinations: Italy, Anguilla, St Barths, Maui, the US and British Virgin Islands, Cabo San Lucas, Aspen and Park City/Deer Valley, Utah. Certified as a Destination Specialist for Italy, St Barths, the US Virgin Islands and Maui, Allegra loves to send people to her most favorite places on the planet but will be happy to help send you anywhere you would like to go.

                                        In her spare time, Allegra likes to hit the beach with a good book, checking out farmerâ€™s markets, cooking and spending time with family and friends. Upcoming trips for Allegra are her annual trips to Italy and St Barths!
                                    </p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="http://cdn.travelkeys.com/sites/default/files/images/agents/elizabeth_large.png?obbgnm" alt="Elizabeth">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Elizabeth</h2>
                                    <h3 class="team__member__title">Villa Specialist<br> Miami, Florida, USA</h3>
                                    <p>A Miami native born to Caribbean parents, Elizabeth holds a Bachelorâ€™s Degree in Business Administration and has steadily worked in the fields of Creative Services, Customer Service Management and Sales. She has been a part of the Travel Keys family for six years and has traveled to several islands throughout the Caribbean, Costa Rica and Mexico, several states across the U.S., Italy and Africa. When not in the office, Elizabeth enjoys watching basketball, traveling (of course) and is a professional dancer.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="http://cdn.travelkeys.com/sites/default/files/images/agents/kelley_large.png?obbgnm" alt="Kelley">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Kelley</h2>
                                    <h3 class="team__member__title">Concierge Specialist<br> Charleston, South Carolina, USA</h3>
                                    <p>I have been working at Travel Keys since I graduated from the University of Georgia in 2011 and have enjoyed being a part of such a wonderful team of travel enthusiasts. I have always enjoyed traveling and seeing what the world has to offer and I enjoy helping others do the same. My two personal favorites have been St. John, USVI and Italy. The places I have been to include St. John, Virgin Gorda, St. Martin, St. Barts, Anguilla, Greece, Turkey, Italy, Hawaii, Mexico (east and west coast), and have traveled a good amount throughout the US. The best part is being able to share my experiences and knowledge with our clients.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="http://cdn.travelkeys.com/sites/default/files/images/agents/david_large.png?obbgnm" alt="David">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">David</h2>
                                    <h3 class="team__member__title">Villa Specialist<br> Toronto, Ontario, Canada</h3>
                                    <p>Working from Toronto, David is best able to serve many of our East Coast and Canadian guests. Some of Davidâ€™s specialized destination knowledge includes: Barbados, St. Martin, Riviera Maya, Greece and more.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="http://cdn.travelkeys.com/sites/default/files/images/agents/richard_large.png?obbgnm" alt="Richard">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Richard</h2>
                                    <h3 class="team__member__title">Villa Specialist<br> USVI, Caribbean</h3>
                                    <p>Working from the heart of the U.S. Virgin Islands, Richard provides great local insight and guidance for Caribbean travelers. Richard specializes in the Virgin Islands (St. John, St. Thomas, Virgin Gorda, Tortola) but also closely oversees interest in other Caribbean destinations.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="http://cdn.travelkeys.com/sites/default/files/images/agents/alesia_large.png?obbgnm" alt="Alesia">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Alesia</h2>
                                    <h3 class="team__member__title">Concierge Specialist<br> USVI, Caribbean</h3>
                                    <p>Alesia is a long time resident of sunny St John in the beautiful US Virgin Islands. In addition to local Caribbean island-hopping, she loves to travel abroad whenever possible to experience the arts, food, and culture of other countries. Some favorite recent visits include Rome, Punta Mita, and Havana.
                                    </p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="http://cdn.travelkeys.com/sites/default/files/images/agents/philip_large.png?obbgnm" alt="Philip">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Philip</h2>
                                    <h3 class="team__member__title">Asia Villa Specialist<br> Tokyo, Japan </h3>
                                    <p>Japan is the jumping off point to much of Asia. After running our Thailand office, Philip has moved to Tokyo to provide centralized oversight for our growing Asia villa collection. Philip specializes in the Koh Samui, Bali, Cambodia and other Asian destinations.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="http://cdn.travelkeys.com/sites/default/files/images/agents/johnny_large.png?obbgnm" alt="Johnny">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Johnny</h2>
                                    <h3 class="team__member__title">Asia Concierge Specialist<br> Koh Samui, Thailand </h3>
                                    <p>Traveling isn't a hobby for me anymore, it's a career. I've always had a thirst for adventure and a curiosity of things unfamiliar. That outlook took me all over Europe during college, from studying abroad in Spain to Eastern Europe with the Peace Corps following my graduation. Through the "love of travel" I met my wife and together we have since explored multiple continents enriching our lives. Travel Keys has taken me from the colorful Caribbean all the way to the exotic coasts of East Asia. One thing I've learned is, you donâ€™t have to be rich to travel, and as J.R.R. Tolkien puts it, "not all those who wander are lost."</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="http://cdn.travelkeys.com/sites/default/files/images/agents/severine_large.png?obbgnm" alt="Severine">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Severine</h2>
                                    <h3 class="team__member__title">Villa Specialist<br> Florida, USA</h3>
                                    <p>Born and raised in France, I started traveling at a very young age, spending several weeks each summer on the Costa Brava in Spain, which gave me a deep appreciation and love for all things Spanish. Later on, as a young adult, I traveled by myself and lived many wonderful places such as Chamonix, St Tropez, Corsica, St Barth, Ireland and more. After a total of 16 months in St Barth, I moved to the US. Through my travels I have experienced a number of cultures, giving me a unique aptitude to prepare my clients for the differences experienced when traveling outside the US.
                                        In the last 18 years, I have visited 100â€™s of villas, acquiring knowledge in many destinations. In personally visiting the villas and destinations, I can assure my clients that the information provided is accurate and true. I can indeed tell my clients â€œI have been there! I slept in this villa! I have eaten at this restaurant! Let me give you the differences between the 2 villas!â€ My personal knowledge is what separate me from the internet.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="http://cdn.travelkeys.com/sites/default/files/images/agents/garrett_large.png?obbgnm" alt="Garrett">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Garrett</h2>
                                    <h3 class="team__member__title">Villa Specialist<br> Atlanta, USA</h3>
                                    <p>I was born and raised in Atlanta, Georgia and spent my summers traveling around the United States on family vacations. My first experiences of traveling abroad were cruises to the Caribbean with my family that sparked my interest into seeing more of the World. This interest continued in college as I was fortunate enough to back pack across Europe on multiple occasions. It was also in college that I met my future wife and upon graduating I returned to live in her home town of Xalapa, Mexico. During this time I was exposed to many new experiences in Latin America. My love of traveling continues today as I am always on the lookout for locations to visit that will expose me to new cultures.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="http://cdn.travelkeys.com/sites/default/files/images/agents/julie_large.png?obbgnm" alt="Julie">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Julie</h2>
                                    <h3 class="team__member__title">Villa Specialist<br> Cortona, Tuscany, Italy</h3>
                                    <p>Julie is located in the Tuscany region of Italy, where she has been living for the past five years.  Her extensive knowledge of the Italian Language and Culture have proven to be very helpful in providing guests with insider tips for their Italian Villa Vacations.   </p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="http://cdn.travelkeys.com/sites/default/files/images/agents/pascal_large.png?obbgnm" alt="Pascal">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Pascal</h2>
                                    <h3 class="team__member__title">Villa Specialist<br> Montreal, Canada</h3>
                                    <p>Originally from Zurich, lived and worked in London, Rome, California, Barcelona, Southern France. Now living in Montreal since 2000. Travelled to: all over Europe, and UK, Hawaii, Peru, Costa Rica, by car across the USA from west to east.
                                        Interests: mid century modern design furniture and art, preservation of mid century architecture ("less is more"), all forms of art, languages, cultures, travelling. Passion: Palm Springs and desert living.
                                    </p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="http://cdn.travelkeys.com/sites/default/files/images/agents/laurel_large.png?obbgnm" alt="Laurel">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Laurel</h2>
                                    <h3 class="team__member__title">Villa Specialist<br> Kauai, USA</h3>
                                    <p>Born and raised in Ontario, Canada. Have been in Hawaii since 1986, residing on Kauai 20 years and the Island of Hawaii for 10 years. Have also visited Maui and Oahu multiple times. Have traveled through Manitoba, Saskatchewan, Alberta, British Columbia, England, Scotland, Whales, Spain, Belgium, Holland, Germany, Yugoslavia, Greece, Ireland, Ohio, Michigan, Indianapolis, Illinois, Iowa, Minnesota, South Dakota, North Dakota, Montana, Wyoming, Idaho, Washington, California, and Baja California.
                                        Interests: Love the beach, water sports, and spending time with my grandchildren. I also have a propensity to adopt severely abused dogs that nobody else wants â€“ I love watching them heal and blossom into animals with self-confidence.
                                    </p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="http://cdn.travelkeys.com/sites/default/files/images/agents/carmen_large.png?obbgnm" alt="Carmen">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Carmen</h2>
                                    <h3 class="team__member__title">Villa Specialist<br> Maui, USA</h3>
                                    <p>Originally from North Carolina, I now live in Maui with my husband and two young sons.  I love to surf, dive, paddle, and whale watch.  I also enjoy sports and travelling.  I have been fortunate to spend time in all of the Hawaiian Islands, the USVI, BVI, Fiji, Poland, Thailand, Mexico, Panama, and multiple mainland States.  One of my most unique experiences was delivering a boat from St. Thomas to Maui, via the Panama Canal.</p>
                                </div>
                            </article>
                        </div>
                        <div class="js-team-carousel-nav team__carousel__nav"></div>
                    </div>
                </div>
            </div>
        </div>
    </article>
    <article class="js-tabs-end section information -background-globe">
        <div class="container -position-right">
            <h2 class="information__title information__title--big">A global mindset with a luxurious perspective.</h2>
            <div class="infromation__columns">
                <h3 class="information__columns__title">Where do we go from here?</h3>
                <div class="information__columns__row">
                    <div class="information__column">
                        <p>Vacation rentals have changed dramatically since Travel Keys was first established in 1991. We were founded with the belief that consumers need an objective resource to ensure they were experiencing the best private villa rentals, not just the homes most easily found.</p>
                        <p>As villa rental listing websites continue to grow, thousands of homes with no structured set of standards are flooding the marketplace making it difficult for consumers to know what is quality and what is not.</p>
                        <p>With such confusion, Travel Keys focuses on objectivity and delivering the best possible villa for a guest’s needs is more important than ever! We deliver inspected homes with personal concierge service at a time when many companies just want to you book online.</p>
                    </div>
                    <div class="information__column">
                        <p>Travel Keys is different. We provide not just a villa marketplace, but a truly authentic local experience.</p>
                        <p>While many vacation rental companies operate a generic call center (often located thousands of miles from your intended destination), Travel Keys has built a global network of locally-based villa and concierge specialists to ensure we provide the value and expertise you expect from your luxury vacation.</p>
                        <p>We’re committed to providing guests access to our highly skilled and experienced team of travel professionals. Our villa inspection program features an exacting set of standards for inclusion, with the majority of villas not accepted.</p>
                    </div>
                </div>
                <img class="information__columns__image -show-for-small-down" src="{$smarty.const.TEMPLATE_PATH}/assets/images/svg/no-sprite/globe.svg" title="A global mindset with a luxurious perspective.">
                <p class="information__columns__text">
                    All of our agents travel the world inspecting our portfolio, with certain staff spread out
                    through our various regions, providing exceptional local service.
                    <span class="information__columns__text__span">This is truly the  <b>Travel Keys Difference"</b></span>
                </p>
            </div>
            <div class="information__next">
                <span class="information__next__span">What's next:</span>
                <a class="button -color-black" href="/about-careers" title="Careers">Careers</a>
            </div>
        </div>
    </article>
    <!-- Search Form -->
    <div class="filter -orientation-vertical -border-top">
        <h4 class="filter__title">Find the perfect destination</h4>
        <form class="form filter__form">
            <div class="form__input__container filter__input__container -anchor-destination">
                <input class="form__input filter__input" name="destination" type="text" placeholder="Destination">
                <i class="icon icon__globe"></i>
            </div>
            <div class="form__input__container filter__input__container -anchor-start-date">
                <input class="js-datepicker form__input filter__input" name="startdate" type="text" placeholder="Check in" readonly>
                <i class="icon icon__calendar"></i>
            </div>
            <div class="form__input__container filter__input__container -anchor-end-date">
                <input class="js-datepicker form__input filter__input" name="enddate" type="text" placeholder="Check out" readonly>
                <i class="icon icon__calendar"></i>
            </div>
            <div class="form__input__container filter__input__container -anchor-counter">
                <div class="filter__input__name"><span>Guests:</span>
                </div>
                    <span class="js-counter-button js-counter-minus filter__input__container__handler -anchor-minus">
                        <i class="icon icon__minus"></i>-
                    </span>
                <select class="js-select2 -has-select2 form__input filter__input">
                    <option value="No. of guests" selected>No. of guests</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
                <input type="text" name="guests" class="js-counter filter__input__counter" value="1" readonly>
                <i class="icon icon__option"></i>
                <span class="js-counter-button js-counter-plus filter__input__container__handler -anchor-plus"><i class="icon icon__plus"></i>+</span>
            </div>
            <div class="filter__button__wrapper">
                <button class="button" type="submit">Search</button>
            </div>
        </form>
    </div>
    <!-- End Search Form -->
{/block}