ThinkingSphinx::Index.define :video, with: :active_record do
    indexes title
    indexes team_first
    indexes team_second
    indexes tags.name, as: :name
end