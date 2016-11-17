package com.sample_application.property

import com.sample_application.User


class Property {

    String address
    int pincode
    String city
    boolean parkingFacility
    long price
    String imageLocation
    String propertyFor
    int size
    String landMark
    static belongsTo = [postedBy: User]
    static constraints = {
        address blank: false
        parkingFacility blank: false
        pincode nullable: false
        imageLocation nullable: true, blank: true
        propertyFor blank: false
        price nullable: false
        city blank: false, nullable: false
        postedBy nullable: true

    }
}
