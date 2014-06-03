require 'active_collab/categorie'
module ActiveCollab
  module API
    module Categories

      def categories(project_id)
        url = "#{@api_url}?path_info=/projects/#{project_id}/tasks/categories&auth_api_token=#{@api_key}"
        response = HTTParty.get(url)
        response_categories = response["categories"].first[1]
        categories = response_categories.collect do |c|
          ActiveCollab::Categorie.from_hash(c)
        end
        categories
      end

    end
  end
end