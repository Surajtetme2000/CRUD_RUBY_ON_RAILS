class EmpsController < ApplicationController
    def index
    @emps = Emp.all
    end

    def new
        @emp = Emp.new 
    end

    def create
        @emp = Emp.new(emp_params)
        if @emp.save
            redirect_to emps_path, notice: 'Employee has been created successfully'
        else
            render :new
        end 
    end

    def edit
        @emp = Emp.find(params[:id])

    end

    def update
        @emp = Emp.find(params[:id])
        if @emp.update(emp_params)
            redirect_to emps_path, notice: 'Employee has been Updated successfully'  
        else
            reder :edit
        end
    end

    def show
        @emp = Emp.find(params[:id])

    end

    def destroy
        @emp = Emp.find(params[:id])
        if @emp.destroy
            redirect_to emps_path, notice: 'Employee has been deleted successfully'
        end
    end

    private 

    def emp_params
        params.require(:emp).permit(:first_name, :middle_name, :last_name, :email, :phone)
    end
end