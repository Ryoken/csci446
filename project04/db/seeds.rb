# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

Article.delete_all

Article.create(:edits => 0, :created => "Tuesday, Feb. 01 2011",
	:title => "Test Article One",
	:author => "Test Author One",
	:body =>
	"Test article one.")

Article.create(:edits => 0, :created => "Wednesday, Feb. 02 2011",
	:title => "Test Article Two",
	:author => "Test Author Two",
	:body =>
	"Test article twp.")

Article.create(:edits => 0, :created => "Thursday, Feb. 03 2011",
	:title => "Test Article Three",
	:author => "Test Author Three",
	:body =>
	"Test article three.")

Article.create(:edits => 0, :created => "Friday, Feb. 04 2011",
	:title => "Test Article Four",
	:author => "Test Author Four",
	:body =>
	"Test article four.")

Article.create(:edits => 0, :created => "Saturday, Feb. 05 2011",
	:title => "Test Article Five",
	:author => "Test Author Five",
	:body =>
	"Test article five.")

Article.create(:edits => 0, :created => "Sunday, Feb. 06 2011",
	:title => "Test Article Six",
	:author => "Test Author Six",
	:body =>
	"Test article six.")

Article.create(:edits => 0, :created => "Monday, Feb. 07 2011",
	:title => "Test Article Seven",
	:author => "Test Author Seven",
	:body =>
	"Test article seven.")

Article.create(:edits => 0, :created => "Tuesday, Feb. 08 2011",
	:title => "Test Article Eight",
	:author => "Test Author Eight",
	:body =>
	"Test article eight.")

Article.create(:edits => 0, :created => "Wednesday, Feb. 09 2011",
	:title => "Test Article Nine",
	:author => "Test Author Nine",
	:body =>
	"Test article nine.")

Article.create(:edits => 0, :created => "Thursday, Feb. 10 2011",
	:title => "Test Article Ten",
	:author => "Test Author Ten",
	:body =>
	"Test article ten.")

Article.create(:edits => 0, :created => "Friday, Feb. 11 2011",
	:title => "Test Article Eleven",
	:author => "Test Author Eleven",
	:body =>
	"Test article eleven.")

Article.create(:edits => 0, :created => "Saturday, Feb. 12 2011",
	:title => "Test Article Twelve",
	:author => "Test Author Twelve",
	:body =>
	"Test article twelve.")

Article.create(:edits => 0, :created => "Sunday, Feb. 13 2011",
	:title => "Test Article Thirteen",
	:author => "Test Author Thirteen",
	:body =>
	"Test article thirteen.")

Article.create(:edits => 0, :created => "Monday, Feb. 14 2011",
	:title => "Test Article Fourteen",
	:author => "Test Author Fourteen",
	:body =>
	"Test article fourteen.")

Article.create(:edits => 0, :created => "Tuesday, Feb. 15 2011",
	:title => "Test Article Fifteen",
	:author => "Test Author Fifteen",
	:body =>
	"Test article fifteen.")

