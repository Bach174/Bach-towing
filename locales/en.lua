local Translations = {
    error = {
        carlocked = "The vehicle is locked",
        cartoofar = "You are too far away...",
        useincar = "You can't attach a rope inside a car!",
    },
    success = {
    },
    menu = {
        ropemenu = "Tow Rope Options",
        fastenrope = "Fasten Rope",
        towingvehicle = "The vehicle you tow with",
        towedvehicle = "The vehicle you are towing",
        detach = "Detach Rope",
        detachdesc = "Removes the rope from both cars"
    },
    mission = {
    },
    info = {
    },
    label = {
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})