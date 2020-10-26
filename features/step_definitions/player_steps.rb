Dado('Login com {string} e {string}') do |email, password|
    goto_login

    login_with(email, password)
end
  
Dado('que eu gosto muito de {string}') do |cat|
    select_cat(cat)
end
  
Quando('toco a seguinte canção:') do |table|
    parody_table(table)
end
  
Então('essa paródia deve ficar em modo de reprodução') do
    song_play
    expect(song_play).to have_text @parody[:parodia]
end