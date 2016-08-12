<div class="form__container">
    <h5 class="section__subtitle message__subtitle">Personalize your vacantion:</h5>
    <h2 class="section__title message__title">Find your perfect villa in St. Barts</h2>
    <p><strong>Cannot find the perfect villa for your vacation?</strong></p>
    <p>Our dedicated Villa Specialists are ready to assist your with all of the details of your stay, large or small, to ensure you enjoy a flawless travel experience.</p>
    <form class="form--letter form--letter-alt filter js-validate-form" method="post" action="/form/contact">
        <div class="form--letter__wrapper">
            <div class="form--letter__input__container -half-width">
                <label class="form--letter__label">First name:</label>
                <input class="form--letter__input" type="text" name="first_name" required />
            </div>
            <div class="form--letter__input__container -half-width">
                <label class="form--letter__label">Last name:</label>
                <input class="form--letter__input" type="text" name="last_name" required />
            </div>
            <div class="form--letter__input__container -half-width">
                <label class="form--letter__label">Phone:</label>
                <input class="form--letter__input" type="tel" name="phone">
            </div>
            <div class="form--letter__input__container -half-width">
                <label class="form--letter__label">Email:</label>
                <input class="form--letter__input h5-email" type="email" name="email" required />
            </div>
        </div>
        <div class="form--letter__input__container -has-textarea">
            <label class="form--letter__label">Describe the perfect villa you are looking for:</label>
            <textarea class="js-textarea form--letter__input -anchor-textarea" name="message" rows="3"></textarea>
        </div>
        <div class="form--letter__wrapper">
            <div class="form--letter__input__container -half-width -anchor-datepicker">
                <label class="form--letter__label">
                    <span class="-hides-for-small-down">Aproximate check in date:</span>
                        <span class="-show-for-small-down">Check in</span>
                    </label>
                <input class="js-datepicker -has-datepicker form--letter__input -appearance-alt" type="text" placeholder="" name="check_in" readonly>
                <i class="icon icon__calendar"></i>
            </div>
            <div class="form--letter__input__container -half-width -anchor-datepicker">
                <label class="form--letter__label">
                    <span class="-hides-for-small-down">Aproximate check out date:</span>
                    <span class="-show-for-small-down">Check out</span>
                </label>
                <input class="js-datepicker -has-datepicker form--letter__input -appearance-alt" type="text" placeholder="" name="check_out" readonly>
                <i class="icon icon__calendar"></i>
            </div>
        </div>
        <button class="button form--letter__button">Send your request</button>
    </form>
</div>