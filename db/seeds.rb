# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Role.create([
	{label: "write"},
	{label: "read"},
	{label: "admin"}
])

ContabilPatternParam.where(fr_id: nil).each do |cp|
	cp.fr_id = Random.new.uuid
	cp.save
end

#ContabilPatternParam.where("contabil_pattern_id not in(30, 23, 17)").delete_all
#ContabilPattern.where("id not in (30,23, 17)").delete_all
#
#
#ContabilPattern.where("company_id not in (?)", [5, 17]).update_all(company_id: nil)
#BalanceSheet.unscoped.where("company_id not in (?)", [5, 17]).update_all(company_id: nil)
#Profile.update_all(company_id: nil)
#Company.where("id not in(?)", [5,17]).each do |c|
#c.company_users.clear
#c.cost_centers.clear
#c.configured_patterns.clear
#c.formulas.clear
#c.indicators.clear
#c.delete
#end