require 'rails_helper'

RSpec.describe Comment, type: :model do

    describe 'DB table' do
      it {is_expected.to have_db_column :id}
      it {is_expected.to have_db_column :email}
      it {is_expected.to have_db_column :body}
    end

    describe 'Factory' do
      it 'has a valid Factory' do
        expect(FactoryBot.build(:comment)).to be_valid
      end
    end

end
