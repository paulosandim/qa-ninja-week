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

    # def select_cat(cat)
    #     find("a[href='/search/new']").click
    #     find("img[src$='#{cat.downcase}.png']").click
    # end

end