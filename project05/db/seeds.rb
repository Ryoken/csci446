# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

Article.delete_all
Author.delete_all

Article.create(:edits => 0, :created => "Tuesday, Feb. 01 2011",
	:title => "Test Article One",
	:author => Author.new(:name => "Test Author 1"),
	:body =>
	"Test article one.")

Article.create(:edits => 0, :created => "Wednesday, Feb. 02 2011",
	:title => "Test Article Two",
	:author => Author.new(:name => "Test Author 2"),
	:body =>
	"Test article two.")

Article.create(:edits => 0, :created => "Thursday, Feb. 03 2011",
	:title => "Test Article Three",
	:author => Author.new(:name => "Test Author 3"),
	:body =>
	"Test article three.")

Article.create(:edits => 0, :created => "Friday, Feb. 04 2011",
	:title => "Test Article Four",
	:author => Author.new(:name => "Test Author 4"),
	:body =>
	"Test article four.")

Article.create(:edits => 0, :created => "Saturday, Feb. 05 2011",
	:title => "Test Article Five",
	:author => Author.new(:name => "Test Author 5"),
	:body =>
	"Test article five.")

Article.create(:edits => 0, :created => "Sunday, Feb. 06 2011",
	:title => "Test Article Six",
	:author => Author.new(:name => "Test Author 6"),
	:body =>
	"Test article six.")

Article.create(:edits => 0, :created => "Monday, Feb. 07 2011",
	:title => "Test Article Seven",
	:author => Author.new(:name => "Test Author 7"),
	:body =>
	"Test article seven.")

Article.create(:edits => 0, :created => "Tuesday, Feb. 08 2011",
	:title => "Test Article Eight",
	:author => Author.new(:name => "Test Author 8"),
	:body =>
	"Test article eight.")

Article.create(:edits => 0, :created => "Wednesday, Feb. 09 2011",
	:title => "Test Article Nine",
	:author => Author.new(:name => "Test Author 9"),
	:body =>
	"Test article nine.")

Article.create(:edits => 0, :created => "Thursday, Feb. 10 2011",
	:title => "Test Article Ten",
	:author => Author.new(:name => "Test Author 10"),
	:body =>
	"Test article ten.")

Article.create(:edits => 0, :created => "Friday, Feb. 11 2011",
	:title => "Test Article Eleven",
	:author => Author.new(:name => "Test Author 11"),
	:body =>
	"Test article eleven.")

Article.create(:edits => 0, :created => "Saturday, Feb. 12 2011",
	:title => "Test Article Twelve",
	:author => Author.new(:name => "Test Author 12"),
	:body =>
	"Test article twelve.")

Article.create(:edits => 0, :created => "Sunday, Feb. 13 2011",
	:title => "Test Article Thirteen",
	:author => Author.new(:name => "Test Author 13"),
	:body =>
	"Test article thirteen.")

Article.create(:edits => 0, :created => "Monday, Feb. 14 2011",
	:title => "Test Article Fourteen",
	:author => Author.new(:name => "Test Author 14"),
	:body =>
	"Test article fourteen.")

Article.create(:edits => 0, :created => "Tuesday, Feb. 15 2011",
	:title => "Test Article Fifteen",
	:author => Author.new(:name => "Test Author 15"),
	:body =>
	"Test article fifteen.")

Quote.delete_all
	
Quote.create(:text => "my cousin works for Bit.ly")
Quote.create(:text => "not just for the country of Spain")
Quote.create(:text => "what's \"Article\" in Spanish, anyway?")
Quote.create(:text => "with a name .com hipsters love!")
Quote.create(:text => "we put the \"ticle\" in article")
Quote.create(:text => "today your article... tomorrow the world")
Quote.create(:text => "about to lose $50,000,000")
Quote.create(:text => "automatically adds all acceptable articles anytime and anywhere")
Quote.create(:text => "one little, two little, three little articles...")
Quote.create(:text => "all your article are belong to us")
Quote.create(:text => "because articles.com was already taken")