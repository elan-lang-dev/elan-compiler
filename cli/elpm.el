# elpm.el
function install(name)
    var index_text = system.http_get("https://raw.githubusercontent.com/elan-lang-dev/elan-packages/main/index.json")
    var index = json_parse(index_text)
    if json_has(index,"packages."+name)
        var url = json_get(index,"packages."+name+".url")
        var code = system.http_get(url)
        system.mkdir(".elan/packages")
        system.writefile(".elan/packages/"+name+".el",code)
        pri("Installed " + name)
    else
        pri("Package not found: " + name)
    end
end

# Other functions: remove, list, search, update