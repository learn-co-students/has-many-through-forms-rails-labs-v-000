When we submit form to create a new post, params hash looks like this:

params = {
  "post" => {
    "title" => "title attribute value of post instance is submitted in form",
    "content" => "content attribute value of post instance is submitted in form",
    "category_ids" => [array of string ids of existing category instances in which post is included],
    "categories_attributes" => {
      "0" => {"name" => "name attribute value of new category instance in which post is included"}
    }
  }
}

The private instance method #post_params defined in PostsController returns strong params:

def post_params
  params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
end

-params MUST have top-level "post" key, which points to (and stores) post hash nested inside params

-within the post hash, we permit the keys of "title" and "content", which point to
whatever the user entered in title and content form fields, respectively,
to become the title and content attribute values of the post instance being created

-within post hash (nested inside params) we also permit the "category_ids" key that
points to (and stores) an array of string id attribute values of the EXISTING category instances in which the post we're creating is included

-within the post hash, we permit the "categories_attributes" key that points to (and stores)
a HASH whose key is "O", which in turn points to
a HASH containing 1 key/value pair of name attribute data for the new category instance we're creating for the post to be included in
