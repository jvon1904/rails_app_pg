class Page < ApplicationRecord
    after_create :update_slug
    before_update :assign_slug
    validates :slug, uniqueness: true
    validates :title, presence: true
    
    def generate_slug
        title.squish.downcase.gsub('.', '').gsub(' ', '-')
    end
    
    def update_slug
        update_attribute(:slug, generate_slug)
    end
    
    def to_param
        self.slug
    end

    private 
    
    def assign_slug
        self.slug = generate_slug
    end
end
