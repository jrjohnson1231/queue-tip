class PositionInQueuesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_position_in_queue, only: [:show, :edit, :update, :destroy]

  # GET /position_in_queues
  # GET /position_in_queues.json
  def index
    @position_in_queues = PositionInQueue.all.order(created_at: 'desc')
  end

  # GET /position_in_queues/1
  # GET /position_in_queues/1.json
  def show
  end

  # GET /position_in_queues/new
  def new
    @position_in_queue = PositionInQueue.new
  end

  # GET /position_in_queues/1/edit
  def edit
  end

  # POST /position_in_queues
  # POST /position_in_queues.json
  def create
    @position_in_queue = PositionInQueue.new(position_in_queue_params)
    @position_in_queue.user_id = current_user.id

    respond_to do |format|
      if @position_in_queue.save
        format.html { redirect_to @position_in_queue, notice: 'Successfully added to queue!.' }
        format.json { render :show, status: :created, location: @position_in_queue }
      else
        format.html { render :new }
        format.json { render json: @position_in_queue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /position_in_queues/1
  # PATCH/PUT /position_in_queues/1.json
  def update
    respond_to do |format|
      if @position_in_queue.update(position_in_queue_params)
        format.html { redirect_to @position_in_queue, notice: 'Update Successful!.' }
        format.json { render :show, status: :ok, location: @position_in_queue }
      else
        format.html { render :edit }
        format.json { render json: @position_in_queue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /position_in_queues/1
  # DELETE /position_in_queues/1.json
  def destroy
    @position_in_queue.destroy
    respond_to do |format|
      format.html { redirect_to position_in_queues_url, notice: 'Position in queue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position_in_queue
      @position_in_queue = PositionInQueue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def position_in_queue_params
      params.require(:position_in_queue).permit(:description)
    end
end
