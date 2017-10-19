class Wine < ActiveRecord::Base

  enum color: {
    red: "red",
    white: "white",
    rose: "rose",
    orage: "orange"
  }

  def self.filtered_with_params(params)
    scope = all
    if params[:color]
      scope = scope.where(color: params[:color])
    end

    if params[:name]
      scope = scope.where("name ILIKE ?", "%#{params[:name].to_s.downcase}%")
    end
    scope
  end

end