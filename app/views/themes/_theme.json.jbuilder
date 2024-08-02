json.extract! theme, :id, :name, :backgroundcolor, :headingcolor, :textcolor, :primarycolor, :secondarycolor, :tertiarycolor, :quaternarycolor, :logo, :maxwidth, :customcss, :created_at, :updated_at
json.url theme_url(theme, format: :json)
json.logo url_for(theme.logo)
