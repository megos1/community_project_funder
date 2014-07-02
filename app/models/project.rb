class Project < ActiveRecord::Base
  belongs_to :user
  has_many :project_items
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "http://placehold.it/200x200"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def total_cost
    total = 0
    project_items.all.each do |project_item|
      total += project_item.cost
    end
    total
  end

  def remaining_cost
    total = 0
    project_items.all.each do |project_item|
      total += project_item.remaining_cost
    end
    total
  end

  def donated
    donatedtotal = 0
    project_items.all.each do |project_item|
      donatedtotal += project_item.donated
    end
    donatedtotal
  end


end

