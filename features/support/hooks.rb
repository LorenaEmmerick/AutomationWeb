Before do
  page.driver.browser.manage.window.maximize
  #page.current_window.resize_to(1440, 900)

  @consultar_page = ConsultarPage.new

end

After do
  shot_file = page.save_screenshot("log/screenshot.png")
  shot_b64 = Base64.encode64(File.open(shot_file, "rb").read)
  attach(shot_b64, "image/png")
end
