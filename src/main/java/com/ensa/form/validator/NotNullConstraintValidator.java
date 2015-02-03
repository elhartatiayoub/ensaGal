package com.ensa.form.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class NotNullConstraintValidator implements ConstraintValidator<NotNull, String> {

    @Override
    public void initialize(NotNull String) {
    }

    @Override
    public boolean isValid(String notEmptyField, ConstraintValidatorContext cxt) {
        return notEmptyField != null
                && !notEmptyField.trim().isEmpty();
    }

}
