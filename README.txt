Kompileras med XeLateX:
xelatex main.tex

Observera att pdflatex inte fungerar! Förmodligen har detta att göra med hur tex hanterar utf8 karaktärer internt: de omvandlas till lustiga strängar som sedan inputsongpackage.sty tuggar igenom och spottar ut med åäö förstörda. XeTeX har bättre utf8 stöd och fungerar därför. (Kommentar: För mig (Oscar Carlsson) är det möjligt att kompilera dokumentet med pdflatex lokalt, pröva olika kompilatorer och se vilka som fungerar.)



MYCKET VIKTIGT är att antalet sidor i programmet är jämt delbart med 4. För att få till detta, och göra det lite roligare än en blank sida, kan det vara kul att lägga in sidor med lite extraktiviteter eller information. I Kepler (året som inte blev) lades det in en sida med "Rita din egna stjärnbild"; i UR fanns det en sida som beräknade det relativa felet mellan de årtal som de olika karaktärerna kom från; i Vasa och Kuba fanns en sida med text om hur de verkliga personerna var och vad de hade för sig. Var kreativa och gör ett program som är delbart med 4 ! (Obs, inte fakultet...) (Extrasidan from Kepler finns i mappen AndraTexter.)



Här är några kommentarer på Viktiga filer. Om inget annat sägs är det oftast enklast om ni döper de nya filerna till namnet som används i latexdokumentet, då hamnar de på rätt plats direkt. Kommentarer i den ordning de används i main.tex:

 - "Inställningsfiler" (ni behöver troligtvis inte ändra dessa om ni inte behöver göra något speciellt)
 -  - packages.tex: filen där alla paket läggs 
 -  - geometry_settings.tex: filen där geometriinställningar sätts
 -  - new_commands.tex: lägg eventuella nya commandon här 
 
 - Innehållsfiler:
 -  - AndraTexter/OmslagFram.pdf: ersätt denna fil med det nya omslaget. MÅSTE UPPDATERAS. (F-spexet Keplers version lämnas som exempel)
 -  - AndraTexter/KaraktarerFront.tex: i denna fil läggs de karaktärsbeskrivningar som skall vara i början av programmet. MÅSTE UPPDATERAS. (F-spexet Keplers version lämnas som exempel)
 -  - AndraTexter/TitlePage.tex: i denna fil lägger ni spexets namn och undertitlar. MÅSTE UPPDATERAS. (F-spexet Keplers version lämnas som exempel)
 -  - AndraTexter/Tant.tex: introduktionstexten från Tant. MÅSTE UPPDATERAS. (F-spexet Keplers version lämnas som exempel)
 -  - AndraTexter/Meny.tex: i denna fil lägger ni spexets meny. MÅSTE UPPDATERAS. (F-spexet Keplers version lämnas som exempel)
 -  - AndraTexter/Rebus.tex: i denna fil lägger ni årets rebus med lösning F-spexet Keplers. MÅSTE UPPDATERAS. version lämnas som exempel)
 -  - Akt1/akt1.tex: denna fil innehåller låttexterna för akt 1. DENNA MÅSTE UPPDATERAS FÖR DET NUVARANDE ÅRET.
 -  - AndraTexter/Inrop.tex: denna fil innhåller inropsbingo. Behöver troligtvis inte ändras om inte ni vill ändra inropsbingot.
 -  - AndraTexter/Positioner.tex: denna fil innehåller korta beskrivningar av spexets olika positioner. Behöver troligtvis inte ändras.
 -  - Akt2/akt2.tex: denna fil innehåller låttexterna för akt 2. DENNA MÅSTE UPPDATERAS FÖR DET NUVARANDE ÅRET.
 -  - AndraTexter/Reklam.tex: denna fil innehåller en kort text om teknisk matematik och teknisk fysik. Behöver troligtvis inte ändras.
 -  - Akt3/akt3.tex: denna fil innehåller låttexterna för akt 3. DENNA MÅSTE UPPDATERAS FÖR DET NUVARANDE ÅRET.
 -  - AndraTexter/Spexare.tex: denna fil tar in bilder på årets spexare inkl. namn och post. DENNA MÅSTE UPPDATERAS FÖR DET NUVARANDE ÅRET MED NYA BILDER.
 -  - AndraTexter/TidigareSpex.tex: denna fil innehåller bilder på loggorna av tidigare spex. DENNA MÅSTE UPPDATERAS FÖR DET NUVARANDE ÅRET.
 -  - AndraTexter/Asplapp.tex: denna fill innehåller asplappens framsida. Behöver troligtvis inte ändras.
 -  - AndraTexter/AsplappBaksida.tex: denna fill innehåller asplappens baksida. Behöver troligtvis inte ändras.
 -  - AndraTexter/KaraktarerBack.tex: denna fil innehåller de karaktärsbeskrivningar som skall vara i slutet av programmmet.
 -  - AndraTexter/OmslagBak.pdf: ersätt denna fil med det nya omslaget. MÅSTE UPPDATERAS.
 
 
Spexare-filen:

I denna filen hämtas alla bilder på spexare med följande kommando:
\foto{<sökväg till bildfil>}{<namn på spexare>}{<post(er) i spexet>}
Notera att sökvägen kan vara absolut eller relativ till positionen av main.tex.

Bilder på spexare:
Bilderna ska vara i format 2:3 och rekommenderas att vara i porträttorientering.


forfilen:

I denna fil läggs, så kallade, fotrader som skrivs ut automatiskt längst ner i sidfoten. De är ofta små bitar rolig information om de verkliga karaktärerna eller händelserna, men godtycklig kul text fungerar också! Varje rad i fotfil.txt hamnar på en sida och försök se till att latex inte behöver radbryta fotraderna. (Det ser bättre ut om det i pdf:en är endast en rad i sidfoten.)


 

