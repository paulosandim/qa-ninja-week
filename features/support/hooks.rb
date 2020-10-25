# Before do
#     log "Tudo aqui ocorre antes do cenário"
# end

After do
    shot = page.save_screenshot("logs/temp_shot.png")

    Allure.add_attachment(
        name: "Screenshot",
        type: Allure::ContentType::PNG,
        source: File.open(shot)
    )
end