<form class="form--letter form--letter-alt filter js-validate-form booking-form" method="post">
    <div class="modal__wrapper">
        <div class="modal__item">
            <div class="form--letter__input__container">
                <label class="form--letter__label">Adults #</label>
                <input class="form--letter__input h5-email" type="email" name="friendemail" required>
            </div>
            <div class="form--letter__input__container -quarter-width -anchor-datepicker">
                <label class="form--letter__label">Start Date:</label>
                <input class="js-datepicker -has-datepicker form--letter__input -appearance-alt" type="text" placeholder="" name="aproxcheckin" readonly>
                <i class="icon icon__calendar"></i>
            </div>

        </div>
        <div class="modal__item">
            <div class="form--letter__input__container">
                <label class="form--letter__label">Children #</label>
                <input class="form--letter__input h5-email" type="email" name="friendemail" required>
            </div>
            <div class="form--letter__input__container -anchor-datepicker">
                <label class="form--letter__label">End Date:</label>
                <input class="js-datepicker -has-datepicker form--letter__input -appearance-alt" type="text" placeholder="" name="aproxcheckout" readonly>
                <i class="icon icon__calendar"></i>
            </div>
        </div>
    </div>
    <h4 class="section__title">Pricing Information</h4>
    <div class="form--letter__input__container">
        <label class="form--letter__label">Cost:</label>
        <p>$ 0</p>
    </div>
    <div class="form--letter__input__container">
        <label class="form--letter__label">Service Charge:</label>
        <p>$ 0</p>
    </div>
    <div class="form--letter__input__container">
        <label class="form--letter__label">Security:</label>
        <p>$ 0</p>
    </div>
    <div class="form--letter__input__container">
        <label class="form--letter__label">Reservation Total:</label>
        <p>$ 0</p>
    </div>
    <div class="form--letter__input__container">
        <label class="form--letter__label">Travel Insurance Quote:</label>
        <p>$ 0</p>
    </div>
    <div class="form--letter__input__container">
        <label class="form--letter__label">Insurance Coverage:</label>
        <p>$ 0</p>
    </div>

    <button class="button form--letter__button">Submit Form</button>
</form>