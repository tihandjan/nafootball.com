ThinkingSphinx::Index.define :video, with: :active_record do
    indexes :title, sortable: true
    indexes tags.name, as: :name
end