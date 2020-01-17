module KeyResultHelper    
    def display_key_result_name(key_result)
        "KR " << key_result.objective.number.to_s << "." << key_result.number.to_s
    end

    def display_key_result_metric(key_result)
        [key_result.result_type << " metric: " << key_result.measurable, "Value: " << key_result.measurement]
    end

    def get_measurement_type_options_for_select
        options_for_select([ "Boolean", "Measured" ], "Measured")
    end
end