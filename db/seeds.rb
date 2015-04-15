# This file should contain all the record creation needed to seed the database
#  with its default values.
# The data can then be loaded with the rake db:seed
# (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# convert character name to email
def name_to_email(candidate_name)
  name = candidate_name.split(/[[:space:]]/)
  name = name.length == 1 ? name.first : [name[0][0], name.last].join('.')
  [name.downcase, Faker::Internet.domain_name].join('@')
end

skills = %w(JavaScript C++ Go Ruby RubyMotion iOS)

[
  'Harry Potter',
  'Hermione Granger',
  'Ron Weasley',
  'Neville Longbottom',
  'Draco Malfoy',
  'Dobby',
  'Hagrid',
  'Dumbledore',
  'Snape',
  'Voldemort'
].each do |candidate_name|
  candidate_skills = (1..3)
    .map { |_| skills.sample }
    .uniq
    .map { |skill_name| Skill.new(name: skill_name) }
  Candidate.create!(
    name: candidate_name,
    email: name_to_email(candidate_name),
    skills: candidate_skills
  )
end
