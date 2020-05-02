class Course < ApplicationRecord
  
  # ============= Contentful =============
  # This model is manage on Contentful. 
  # Which mean, the most of the data structure is defined on Contentful space.
  # The fields store in our DB are used to pair our model to Contentful's model.
  
  include ContentfulRenderable
  CONTENT_TYPE = "courses" # This is the content_type_id from Contentful. 
  
  # ============= relationships =============
  # Article(content_type: article) can has_one Author(content_type: author)
  # After a Article object is rendered, we can do article.author to get the Author object
  # It works just as any Active Model records, 
	# but the relations are entirely made in Contentful.
  
  # ============= validations =============
  
  validates :contentful_id, :slug, presence: true, uniqueness: true
  
end