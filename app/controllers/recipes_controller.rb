class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
    if params[:download]
      @export = true
      @recipe_name = @recipe.name.gsub(/ /,'_').underscore
      prepend_view_path "#{Rails.root}/app/views/themes/#{params[:target]}"
      send_data(render_to_string(layout: params[:target]), filename: export_filename(@recipe_name, params[:target]), type: 'text/html')
    else
      render
    end
  end

  def index
    @recipes = Recipe.all
  end

  private
  def export_filename(recipe, format)
    "#{@recipe_name}_#{format}.html"
  end

end
