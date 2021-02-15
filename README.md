# li-learning-parser
## Simple example how-to extract some data from the linkedin.com/learning

Sometimes, you need quick and dirty extraction information from someone's site. In my case I need to extract some data from **LinkedIn learning** portal. Particularly, video url, name, length and author. Of course you can just copy / paste it to the spreadsheet, but ...

As an engineer, I’d prefer don’t repeat “repeatable tasks” :D

So, I present to your attention a short and efficient way to do it with **XSLT**. As we’ll deal with a single page application, we need to navigate through the site and open a learning course which we need. After that open Inspect (Ctrl + Shift + I for Chrome), and find an DOM element which you’d like to investigate. Copy this element to one of the available [on-line XSLT engines](http://freeformatter.com) and use the provided [xslt scenario](src/li-learning-parser.xsl) for extracting and saving it to CSV.

Enjoy