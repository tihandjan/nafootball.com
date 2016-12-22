ThinkingSphinx::Index.define :article, with: :active_record do
    indexes title
    indexes summary
    indexes tags.name, as: :name
end