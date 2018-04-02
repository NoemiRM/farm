class PhoneValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
        record.errors[attribute] << "doesn't look like a valid phone!!, example: 999-999-999 =/" unless value =~ /\d{3}-\d{3}-\d{3}/
    end
end