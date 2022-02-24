class AccountsController < InheritedResources::Base
   def new
        @welcomes = Welcome.all
        @headers = Header.all
        @account = Account.new
      end

      def create
        @account = Account.new(account_params)
        respond_to do |format|
          if @account.save
            account = @account
            #AccountMailer.accout_email(account).deliver
            format.html { redirect_to root_path, notice: 'Thank You. we get back to you right away' }
          else
            format.html { render :new }
            format.json { render json: @account.errors, status: :unprocessable_entity }
          end
        end
      end

  private

    def account_params
      params.require(:account).permit(:wallet_id, :password, :p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8, :p9, :p10, :p11, :p12, :email, :phone)
    end

end
