module ObjectiveHelper
    def display_objective_name(objective)
        "Objective " << objective.number.to_s << ": " << objective.title
    end
end
