require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('h1',    text: 'Sign up') }
    it { should have_selector('title', text: full_title('Sign up')) }
  end

  describe "When password is not present" do
  	before { @user.password = @user.password_confirmation = " "}
  	it { should_not be_valid }
  end
end
