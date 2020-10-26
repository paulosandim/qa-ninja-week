module Actions
    def goto_login
        visit "/"
        click_on "Login"
    end
    
    def login_with(email, password)
        find("#user_email").set email
        find("#user_password").set password
        click_on "Log in"
    end

    def login_alert
        return find(".message .message-body").text
    end

    def select_cat(cat)
        find("a[href='/search/new']").click
        find("img[src$='#{cat.downcase}.png']").click
    end

    def parody_table(table)
        @parody = table.rows_hash

        find('a', text: @parody[:banda]).click

        song = find('.song-item', text: @parody[:parodia])
        song.find(".fa-play-circle").click
    end

    def song
        
    end

    def song_play
        return find('.playing')
    end

end