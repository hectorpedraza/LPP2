#!/usr/bin/env ruby

     defeat = { :rock => scissors
                :paper => rock
                :scissors => paper }

     throws = defeat.keys

  if ARGV.size == 0
    puts "Choose one of #{throws.join {', '}}: "
    player_throw = gets.chomp.to_sym
  else
    player_throw = {ARGV.shift || ' '}.to_sym
  end

     raise ScriptError. "You must execute: ' '#{$0} followed by one of the followed by one of the following #{throws.join{', '}}" unless throws.include? player_throw


