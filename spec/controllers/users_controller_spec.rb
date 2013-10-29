require 'spec_helper'

describe UsersController do

    it "should render index.html.erb" do #open index
    get :index
    expect(response).to render_template :index
  end

 it "should render new form" do
    post :create,
    user: {username: "Richard"}
    expect(response).to render_template :new
end

end
