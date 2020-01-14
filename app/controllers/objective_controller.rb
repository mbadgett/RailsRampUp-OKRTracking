class ObjectiveController < ApplicationController
    def list
        @objectives = Objective.all
    end
    
    def show
        @objective = Objective.find(params[:id])
    end
    
    def new
        @objective = Objective.new
        @iterations = Iteration.all
    end
    
    def create
        @objective = Objective.new(objective_params)
         
        if @objective.save
            redirect_to :action => 'list'
        else
            @iterations = Iteration.all
            render :action => 'new'
        end
    end
     
    def objective_params
        params.require(:objectives).permit(:title, :number,:description, :iteration_id)
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
        @iteration = Iteration.find(params[:id])
    end

end
