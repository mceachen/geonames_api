module GeoNamesAPI
  class PostalCode < ListEndpoint

    METHOD = "postalCodeLookupJSON"
    FIND_PARAMS = %w(postalcode country)

    def city
      place_name
    end

    def state
      admin_name1
    end

    def state_short
      admin_code1
    end

    def nearby_codes(radius=10, maxRows=5)
      NearbyPostalCode.all(postalcode, country_code, radius, maxRows)
    end
  end
end
