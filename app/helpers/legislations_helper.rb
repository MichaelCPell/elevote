module LegislationsHelper

   def show_support
     for opinion in @support
          Official.find_by_id(opinion.official_id).firstname
     end
   end


  def show_opposition
     for opinion in @opposers
          Official.find_by_id(opinion.official_id).firstname
     end
   end


end
