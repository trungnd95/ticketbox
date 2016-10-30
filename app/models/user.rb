class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :events
  has_many :tickets
  validates :name, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def check_duplicate_type type_id
    tickets.map(&:ticket_type_id).include? type_id.to_i
  end

end
