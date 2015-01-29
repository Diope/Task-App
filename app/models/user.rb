class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tasks, dependent: :destroy
  #Note: 'dependent: :destroy' makes sure when the user cancels their account
  # all associated information (in this case tasks) also get destroyed

end
