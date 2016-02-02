class CountersController < ApplicationController
  def index
    @counters = Counter.all
end

def new
  @counter = Counter.new
end

def create
  @counter = Counter.create(counter_params)
end

def update
    @counter = Counter.find(params[:id])
    @counter.value += 1
    @counter.save
end

def show
    @counter = Counter.find(params[:id])
end

private

def counter_params
  params.require(:counter).permit(:value)
end
end
