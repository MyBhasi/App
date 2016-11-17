package com.sample_application.office

import com.sample_application.User
import com.sample_application.property.Property
import dashboard.DashboardController

class Office extends Property {

    Date dateCreated
    int floorNo
    boolean cafeteriaAvailability

    static constraints = {

        cafeteriaAvailability blank: false

    }

    static mapping = {
        discriminator("Office")
    }
}
