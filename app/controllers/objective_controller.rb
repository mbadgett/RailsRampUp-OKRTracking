class ObjectiveController < ApplicationController
    def list
        @objectives = Objective.all
    end
    
    def show
        @objective = Objective.find(params[:id])
    end
    
    def new
        @iteration = Iteration.find(params[:iteration_id])
        @objective = Objective.new
    end
    
    def create
        @objective = Objective.new(objective_params)
        
        if @objective.save!
            @iteration = Iteration.find(@objective.iteration_id)
            redirect_to :action => 'show_iterations', :iteration_id => @iteration.id
        else
            @iteration = Iteration.find(params[:iteration_id])
            redirect_to :action => 'new', :iteration_id => @iteration.id
        end
    end
     
    def objective_params
        params.require(:objectives).permit(:title, :number, :description, :iteration_id)
    end
    
    def edit
        @objective = Objective.find(params[:id])
        @iterations = Iteration.all
    end
    
    def update
        @objective = Objective.find(params[:id])
         
        if @objective.update_attributes(objective_param)
            redirect_to :action => 'show', :id => @objective
        else
            @iterations = Iteration.all
            render :action => 'edit'
        end
        
    end
     
    def objective_param
        params.require(:objective).permit(:title, :number,:description, :iteration_id)
    end
    
    def delete
        Objective.find(params[:id]).destroy
        redirect_to :action => 'list'
    end

    def show_iterations
        redirect_to :controller => 'iteration', :action => 'show', :id => params[:iteration_id]
    end

end
