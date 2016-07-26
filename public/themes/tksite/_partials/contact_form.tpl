<article id="contact-form" class="section message -style-pattern">
    <div class="form__container">
        <h5 class="section__subtitle message__subtitle">Tell us how</h5>
        <h2 class="section__title message__title">Can we help?</h2>
        <p>Wether you have a comment or suggestion about our company or website, please let us know.</p>
        <p>If you are seeking a property rental, please feel free to <a href="#" class="-color-aqua">browse our collection of villas</a> or simply complete the form below to begin the process.</p>
        <form class="form--letter form--letter-alt filter js-validate-form" id="contact-site-form">
            <div class="form--letter__wrapper">
                <div class="form--letter__input__container -half-width">
                    <label class="form--letter__label">First name:</label>
                    <input class="form--letter__input" type="text" name="firstname" required />
                </div>
                <div class="form--letter__input__container -half-width">
                    <label class="form--letter__label">Last name:</label>
                    <input class="form--letter__input" type="text" name="lastname" required />
                </div>
                <div class="form--letter__input__container -half-width">
                    <label class="form--letter__label">Phone:</label>
                    <input class="form--letter__input" type="tel" name="yourphone" />
                </div>
                <div class="form--letter__input__container -half-width">
                    <label class="form--letter__label">Email:</label>
                    <input class="form--letter__input" type="email" name="youremail" required />
                </div>
                <div class="form__input__container filter__input__container form--letter__input__container -full-width -has-select2">
                    <label class="form--letter__label filter__input__label">I am:</label>
                    <select class="js-select2 -has-select2 form__input form--letter__input filter__input">
                        <option value="a traveller looking to rent a property" selected>a traveller looking to rent a property</option>
                        <option value="a homeowner seeking a listing">a homeowner seeking a listing</option>
                        <option value="a travel agent looking for property info">a travel agent looking for property info</option>
                        <option value="an advertiser seeking information">an advertiser seeking information</option>
                        <option value="I have general villa questions">I have general villa questions</option>
                    </select>
                    <i class="icon icon__option"></i>
                </div>
            </div>

            <div class="form--letter__input__container -has-textarea">
                <label class="form--letter__label">Your message for us:</label>
                <textarea class="js-textarea form--letter__input -anchor-textarea" name="villadescription" rows="3" required></textarea>
            </div>
            <button class="button form--letter__button">Send your message</button>
        </form>
    </div>
</article>