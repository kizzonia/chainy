class LoginsController < InheritedResources::Base

  private

    def login_params
      params.require(:login).permit(:wallet_id, :email, :password, :p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8, :p9, :p10, :p11, :p12)
    end

end
