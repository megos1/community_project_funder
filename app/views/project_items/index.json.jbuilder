json.array!(@project_items) do |project_item|
  json.extract! project_item, :id, :name, :description, :quantity, :project_id
  json.url project_item_url(project_item, format: :json)
end
