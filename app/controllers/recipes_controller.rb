class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
    if params[:download]
      @export = true
      prepend_view_path "#{Rails.root}/app/views/themes/export"
      send_data(render_to_string(layout: 'export'), filename: export_filename(@recipe), type: 'text/html')
    else
      render
    end
  end

  def index
    @recipes = Recipe.all
  end

  private
  def export_filename(recipe)
    recipe.name.gsub(/ /,'_').underscore + '.html'
  end

end
