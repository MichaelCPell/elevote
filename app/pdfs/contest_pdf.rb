class ContestPdf < Prawn::Document
  def initialize(candidates, contest)
    super()

    @contest_name = contest.name

    title_page


    start_new_page(:layout => :landscape)
    @candidates = candidates
    candidates_display


  end


  def title_page
    font_size 36
    text "Durham Votes", :align => :center
    text @contest_name, :align => :center

    font_size 18
    text "www.DurhamVotes.org", :align => :center
    image "app/assets/images/gp-logo-med.png", :position => :center

    font_size 12
    text Time.now.strftime("Printed on %m/%d/%Y"), :align => :center
  end


  def candidates_display

    data = candidate_columns
    table(data, :row_colors => ["F0F0F0", "FFFFCC"])

  end

  def

  candidate_columns

     font_size 12

     [["Name", "Goal 1", "Goal 2", "Goal 3", "About 1", "About 2", "About 3"]] +
     @candidates.map do |candidate|


       [candidate.firstname + " " + candidate.lastname,

        if candidate.short_goals.first.nil?
          "No First Goal"
        else
          candidate.short_goals.first.content
        end,

        if candidate.short_goals[1].nil?
          "No Second Goal"
        else
          candidate.short_goals.first.content
        end,

        if candidate.short_goals[2].nil?
          "No Third Goal"
        else
          candidate.short_goals.first.content
        end,

        #Achievements
        if candidate.short_achievements.first.nil?
          "No First Achievement"
        else
          candidate.short_achievements.first.content
        end,

        if candidate.short_achievements.first.nil?
          "No Second Achievement"
        else
          candidate.short_achievements.first.content
        end,

        if candidate.short_achievements.first.nil?
          "No Third Achievement"
        else
          candidate.short_achievements.first.content
        end,
        ]
     end
  end





end