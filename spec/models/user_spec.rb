require 'rails_helper'

RSpec.describe User, type: :model do

  let (:user) { create(:user, first_name:"Miguel", last_name:"Savignano") }

  describe "#before_save" do
    it "if a user don't have username generate one" do
      user = create(:user, username:nil, first_name:"Miguel", last_name:"Savignano")
      expect( user.username ).to eq "miguels"
    end

    it "if a user have username not build one" do
      user = create(:user, username:"superusername", first_name:"Miguel", last_name:"Savignano")
      expect( user.username ).to eq "superusername"
    end

    it "not duplicate username" do
      user = create(:user, first_name:"Miguel", last_name:"Savignano")
      user2 = create(:user, first_name:"Miguel", last_name:"Savignano")
      user3 = create(:user, first_name:"Miguel", last_name:"Savignano")
      expect( user.username ).to eq "miguels"
      expect( user2.username ).to eq "miguels2"
      expect( user3.username ).to eq "miguels3"
    end
  end

  it ".find_by_username_or_id" do
    user = create(:user)
    expect( User.find_by_username_or_id(user.id.to_s) ).to eq user
    expect( User.find_by_username_or_id(user.username) ).to eq user
  end

  it ".exists_email?(email)" do
    user = create(:user, email:"miguel@boda.market")
    expect( User.exists_email?(user.email) ).to eq(true)
    expect( User.exists_email?("otheremail@test.com") ).to eq(false)
  end

  it ".random" do
    user = create(:user)
    expect(User.random).to eq(user)
  end

  it "#build_user_name" do
    user = User.new(first_name:"Miguel Antonio", last_name:"Savignano")
    expect(user.build_user_name).to eq("miguelantonios")
  end

  it "#full_name" do
    expect( user.full_name ).to eq "Miguel Savignano"
  end

  it "#shorted_name" do
    expect( user.shorted_name ).to eq "Miguel S"
  end
end
