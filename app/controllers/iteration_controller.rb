class IterationController < ApplicationController

    def list
        @iterations = Iteration.all
    end
    
    def show
        @iteration = Iteration.find(params[:id])
    end
    
    def new
        @iteration = Iteration.new
    end
    
    def create
        @iteration = Iteration.new(iteration_params)
         
        if @iteration.save
           redirect_to :action => 'list'
        else
           render :action => 'new'
        end
        
    end
     
    def iteration_params
        params.require(:iterations).permit(:name, :start_date, :end_date)
    end
    
    def edit
        @iteration = Iteration.find(params[:id])
    end
    
    def update
        @iteration = Iteration.find(params[:id])
         
        if @iteration.update_attributes(iteration_param)
           redirect_to :action => 'show', :id => @iteration
        else
           render :action => 'edit'
        end
        
    end
     
    def iteration_param
        params.require(:iteration).permit(:name, :start_date, :end_date)
    end
    
    def delete
        Iteration.find(params[:id]).destroy
        redirect_to :action => 'list'
    end

end
