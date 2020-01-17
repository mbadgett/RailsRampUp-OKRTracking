class KeyResultController < ApplicationController
    def list
        @key_results = KeyResult.all
    end
    
    def show
        @key_result = KeyResult.find(params[:id])
    end
    
    def new
        @objective = Objective.find(params[:objective_id])
        @key_result = KeyResult.new
    end
    
    def create
        @key_result = KeyResult.new(key_result_params)
            
        if @key_result.save
            redirect_to :action => 'show_objectives', :objective_id => @key_result.objective_id
        else
            @objective = Objective.find(params[:objective_id])
            render :action => 'new'
        end
    end
        
    def key_result_params
        params.require(:key_results).permit(:title, :number, :objective_id, :result_type, :measurable, :measurement)
    end
    
    def edit
        @key_result = KeyResult.find(params[:id])
    end
    
    def update
        @key_result = KeyResult.find(params[:id])
            
        if @key_result.update_attributes(key_result_param)
            redirect_to :action => 'show_objectives', :objective_id => @key_result.objective_id
        else
            render :action => 'edit'
        end
        
    end
        
    def key_result_param
        params.require(:key_result).permit(:title, :number, :objective_id, :result_type, :measurable, :measurement)
    end
    
    def delete
        KeyResult.find(params[:id]).destroy
        redirect_to :action => 'list'
    end

    def show_objectives
        redirect_to :controller => 'objective', :action => 'show', :id => params[:objective_id]
    end
end
