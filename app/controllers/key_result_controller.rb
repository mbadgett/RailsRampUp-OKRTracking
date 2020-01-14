class KeyResultController < ApplicationController
    def list
        @key_results = KeyResult.all
    end
    
    def show
        @key_result = KeyResult.find(params[:id])
    end
    
    def new
        @key_result = KeyResult.new
        @iterations = Iteration.all
    end
    
    def create
        @key_result = KeyResult.new(key_result_params)
            
        if @key_result.save
            redirect_to :action => 'list'
        else
            @iterations = Iteration.all
            render :action => 'new'
        end
    end
        
    def key_result_params
        params.require(:key_results).permit(:title, :number, :objective_id, :result_type, :measurable, :measurement)
    end
    
    def edit
        @key_result = KeyResult.find(params[:id])
        @iterations = Iteration.all
    end
    
    def update
        @key_result = KeyResult.find(params[:id])
            
        if @key_result.update_attributes(key_result_param)
            redirect_to :action => 'show', :id => @key_result
        else
            @iterations = Iteration.all
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
        @objective = Objective.find(params[:id])
    end
end
