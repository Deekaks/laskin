--Funktiot
rdm = function(z)
    local s = math.random(1, 5)
    print(s)
    return s[z]
end

esx = function(b)
    local v = 
    print(v)
    return v[b]
end

--Tablet
C = {sal = 'Anna salasana'}
L = {first = 'Valitse seuraavista: plus, miinus, jakolasku, potenssi, maksimi, abs.'}

U = {sum = '\nPlus lasku valittu, kirjoita kaksi lukua yhdelle riville.', 
     sub = '\nMiinus lasku valittu, kirjoita kaksi lukua yhdelle riville.',
     div = '\nJakolasku valittu, kirjoita kaksi lukua yhdelle riville.',
     max = '\nSuurin luku valittu, suurempi luku tulostetaan. (3 numeroa mahdollista)', 
     pow = '\nPotenssi lasku valittu, kirjoita kaksi lukua yhdelle riville. (Liian suuri luku palauttaa vain "inf")', 
     abs = '\nABS valittu, arvokkaampi syote tulostetaan.'}


print(C.sal)
io.write('Salasana: ')
--Aloittaa salasanan pyynti loopin
while (salasana ~= '1234') do
    print('')
    io.write('Salasana: ')
    salasana = io.read()
    --Jos syöte on "1234", looppi päättyy.
    if salasana=="1234" then
        os.execute('color f0')
        print("Oikein ; ;")
    end
end
print(L.first)

--Ottaa inputin / string.lower hyväksyy pienet ja isot kirjaimet vastauksena
local input = string.lower(io.read())
if input == "plus" then
    -- Aloittaa loopin joka toistaa kysymystä jokaisen hyväksytyn vastauksen jälkeen.
    while(true) do
    --Tulostaa U pöydästä "sum" osion.
    print(U.sum)
    -- local a, b = io.read ottaa vastaan inputtina vain numeron
    local a, b = io.read("*n","*n")
    -- Tulostaa "Vastaus: luku + luku "
    io.write("Vastaus: " .. (a + b))
    end

elseif input == "miinus" then while(true) do 
    os.execute('color 04')
    print(U.sub)
    local a, b = io.read("*n","*n")
    io.write("Vastaus: " .. (a - b))
    end

elseif input == ("jako") then while(true) do 
    print(U.div)
    local a, b = io.read("*n","*n")
    io.write("Vastaus: " .. (a / b))
    end

elseif input == ("maksimi") then while(true) do 
    print(U.max)
    local a, b = io.read("*n","*n")
    io.write("Vastaus: " .. math.max(a, b))
    end

elseif input == ("potenssi") then while(true) do 
    print(U.pow)
    local a, b = io.read("*n","*n")
    --math.(lasku) mukaan voi laskea erinlaisia monimutkaisia laskuja tarvitsematta (+, -, /, merkkejä)
    io.write("Vastaus: " .. math.pow(a, b))
    end

elseif input == ("abs") then while(true) do
    print(U.abs)
    local a, b = io.read("*n","*n")
    io.write("Vastaus: " .. math.min(a, b))
    end

--Mikä tahansa muu vastaus tulostaa "Virheellinen vastaus."
else 
    print("Virheellinen vastaus.")
    end 