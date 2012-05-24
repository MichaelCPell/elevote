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
    text "Elevote", :align => :center
    text @contest_name, :align => :center

    font_size 18
    text "www.Elevote.org", :align => :center
    #image "app/assets/images/gp-logo-med.png", :position => :center

    font_size 12
    text Time.now.strftime("Printed on %m/%d/%Y"), :align => :center
  end


  def candidates_display

    data = candidate_columns
    table(data, :row_colors => ["F0F0F0", "FFFFCC"], :column_widths => [110]
    ) do
      self.header = true
      row(0).font_style = :bold
    end


  end

  def

  candidate_columns

     font_size 16


     [["Name", "Goal 1", "Goal 2", "Goal 3", "About 1", "About 2", "About 3"]] +

         @candidates.map do |candidate|

     font_size 10
       [candidate.firstname + " " + candidate.lastname,

        if candidate.statements[0].nil?
          "No First Goal"
        else
          candidate.statements[0].content
        end,

        if candidate.statements[1].nil?
          "No Second Goal"
        else
          candidate.statements[1].content
        end,

        if candidate.statements[2].nil?
          "No Third Goal"
        else
          candidate.statements[2].content
        end,



        if candidate.statements[3].nil?
          "No First Goal"
        else
          candidate.statements[3].content
        end,

        if candidate.statements[4].nil?
          "No Second Goal"
        else
          candidate.statements[4].content
        end,

        if candidate.statements[5].nil?
          "No Third Goal"
        else
          candidate.statements[5].content
        end

        ]
     end
  end





end