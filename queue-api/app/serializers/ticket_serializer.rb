class TicketSerializer < ActiveModel::Serializer
  attributes :id, :student, :question, :open, :project_id, :created_at, :updated_at
end
