from mistletoe import Document
from mistletoe.markdown_renderer import MarkdownRenderer,BlankLine
from mistletoe.block_token import Heading,List,Quote,Table,Paragraph
from mistletoe.span_token import RawText,Image,Emphasis,LineBreak,EscapeSequence
import re
import sys

def slideHeading(doc,childNumber):
    for i in range(childNumber,-1,-1):
        if isinstance(doc.children[i], Heading):
            return doc.children[i]

#def slideContent(paragraph,renderer):
#    for child in paragraph.children:
#        outputString += renderer.render(child))

def isMathBlock(paragraph):
    return isinstance(paragraph.children[0], RawText) and len(paragraph.children) > 2 and paragraph.children[0].content == '$$' and isinstance(paragraph.children[-1], RawText) and paragraph.children[-1].content == '$$'

def isImageBlock(paragraph):
    return len(paragraph.children) == 1 and isinstance(paragraph.children[0],Image)

def isList(paragraph):
    return isinstance(paragraph,List)

def isQuote(paragraph):
    return isinstance(paragraph,Quote)
def isTable(paragraph):
    return isinstance(paragraph,Table)

def isParagraph(paragraph):
    return isinstance(paragraph,Paragraph)

def tableBreakdown(table,renderer,maxrows = 3):
    tableCopy = Document(renderer.render(table)).children[0]
    rows = tableCopy.children
    tables = []
    for j in range(0,len(rows),maxrows):
        tableCopy.children = rows[j:j+maxrows]
        tables.append(Document(renderer.render(tableCopy)).children[0])
    return tables

def paragraphSummary(paragraph,renderer):

    sentences = renderer.render(paragraph).split('. ')
    slideContent = []
    rSlides = []
    for sentence in sentences:
        #outputString += sentence)
        matches = re.findall(r'\*\*[^*]+\*\*',sentence)
        #outputString += f'matches:{matches}'
        if len(matches) > 0:
            if len(matches) > 1 or len(matches[0].split(' ')) < 5:
                slideContent.append(sentence)
            else:
                slideContent.append(matches[0])
    if len(slideContent) != 1:
        for content in slideContent:
            rSlides.append(Document(f' - {content}').children[0])
    else:
        rSlides.append(Document(f'{slideContent[0]}').children[0])
    return rSlides

def listBreakdown(paragraph,renderer,maxchars = 320):
    i = 0
    itemSlides = []
    currentSlide = []
    currentlen = 0
    #print()
    while i < len(paragraph.children):
        itemlen = len(renderer.render(paragraph.children[i]))
        #print(itemlen,currentlen)
        if itemlen < maxchars - currentlen:
            currentSlide.append(paragraph.children[i])
            currentlen += itemlen
        else:
            if i != 0:
                itemSlides.append(currentSlide)
            currentSlide = [paragraph.children[i]]
            currentlen = itemlen
        if i == len(paragraph.children)-1:
            itemSlides.append(currentSlide)
        i+=1
    #outputString += itemSlides)
    return itemSlides

def quoteBreakdown(paragraph,renderer,maxchars = 320):
    i = 0
    itemSlides = []
    currentSlide = []
    currentlen = 0
    while i < len(paragraph.children):
        itemlen = len(renderer.render(paragraph.children[i]))
        if itemlen < maxchars - currentlen:
            currentSlide.append(paragraph.children[i])
            currentlen += itemlen
        else:
            if i != 0:
                itemSlides.append(currentSlide)
            currentSlide = [paragraph.children[i]]
            currentlen = itemlen
        if i == len(paragraph.children)-1:
            itemSlides.append(currentSlide)
        i+=1
    #outputString += itemSlides)
    return itemSlides

def mathBreakdown(paragraph,renderer,maxlines = 3):
    mathBlock = renderer.render(paragraph).replace('\\\\\\\\\n','').split('\n')[1:-2]
    mathSlides = []
    if '\\begin{aligned}' in mathBlock:
        #print(f'trim:{mathBlock[0]}, {mathBlock[-1]}')
        lines = mathBlock[1:-1]
    else:
        lines = mathBlock

    for i in range(0,len(lines),maxlines):
        slide = ''
        slide += '$$\n'
        slide +='\\begin{aligned}\n'
        for j in range(i,i+maxlines if i+maxlines <= len(lines) else len(lines)):
            slide += f'{lines[j]}\n'
        slide +='\\end{aligned}\n'
        slide += '$$\n'

        mathSlides.append(Document(slide).children[0])
    return mathSlides

def isInvisible(paragraph):
    return isinstance(paragraph,BlankLine) or (isParagraph(paragraph) and len(paragraph.children) == 1 and isinstance(paragraph.children[0],Emphasis)) or isinstance(paragraph,Heading)

     
def main():
    args = sys.argv
    print('converting to slides...')
    style = ''
    imgOptions = args[2] if len(args) > 2 else ''
    with open('styles/style.css','r') as css:
        style = f'{css.read()}\n'

    with open(f'{args[1]}', 'r') as fin:
        outputString = f"---\ntype: slide\ntheme: uncover\nstyle: |\n{style}---\n\n # {args[1].split('.')[0]} \n\n"
        with MarkdownRenderer() as renderer:
            doc = Document(fin)
            
            for i,child in enumerate(doc.children):
                if not isInvisible(child):
                    #outputString += f'slide {i}:{type(child)}'
                    if isParagraph(child):
                        if isImageBlock(child):
                            #outputString += 'image'
                            outputString += '---'
                            outputString += '\n\n'
                            outputString += '<!-- _class: imgh -->\n'
                            #outputString += f'{renderer.render(slideHeading(doc,i))}'
                            #print(renderer.render(slideHeading(doc,i)))
                            outputString += f"#### {renderer.render(slideHeading(doc,i)).replace('#','')}"
                            outputString += f'![{imgOptions}]({child.children[0].src})\n'
                            #outputString += renderer.render(child)
                            outputString += '\n'

                        elif isMathBlock(child):
                            outputString += '---'
                            outputString += '\n\n'
                            outputString += f"## {renderer.render(slideHeading(doc,i)).replace('#','')}"
                            #breakDown = mathBreakdown(child,renderer)
                            #for j,slide in enumerate(breakDown):
                            #    outputString += renderer.render(slide)
                            #    if j != len(breakDown) - 1:
                            #        outputString += '\n'
                            #        outputString += '----'
                            #        outputString += '\n\n'
                            outputString += renderer.render(child)
                            outputString += '\n'

                        else:
                            pSummary = paragraphSummary(child,renderer)
                            if len(pSummary) > 0:
                                outputString += '---'
                                outputString += '\n\n'
                                outputString += f"## {renderer.render(slideHeading(doc,i)).replace('#','')}"
                                for content in pSummary:
                                    outputString += renderer.render(content)
                                outputString += '\n'

                    elif isQuote(child):
                        #outputString += '---'
                        #outputString += '\n\n'
                        #outputString += renderer.render(child)
                        #outputString += '\n'
                        #outputString += 'list'
                        outputString += '---'
                        outputString += '\n\n'
                        breakDown = quoteBreakdown(child,renderer)
                        for j,slide in enumerate(breakDown):
                            for item in slide:
                                outputString += renderer.render(item)
                            if j != len(breakDown) - 1:
                                outputString += '\n'
                                outputString += '----'
                                outputString += '\n\n'
                        outputString += '\n'

                    elif isList(child):
                        #outputString += 'list'
                        outputString += '---'
                        outputString += '\n\n'
                        breakDown = listBreakdown(child,renderer)
                        for j,slide in enumerate(breakDown):
                            outputString += f"## {renderer.render(slideHeading(doc,i)).replace('#','')}"
                            for item in slide:
                                outputString += renderer.render(item)
                            if j != len(breakDown) - 1:
                                outputString += '\n'
                                outputString += '----'
                                outputString += '\n\n'
                        outputString += '\n'

                    elif isTable(child):
                        #outputString += 'table'
                        outputString += '---'
                        outputString += '\n\n'
                        breakDown = tableBreakdown(child,renderer)
                        for j,slide in enumerate(breakDown):
                            outputString += renderer.render(slide)
                            if j != len(breakDown) - 1:
                                outputString += '\n'
                                outputString += '----'
                                outputString += '\n\n'
                        outputString += '\n'
        outputString += '---'
    with open(f'Slides for {args[1]}', 'w+') as fout:
        fout.write(outputString)
    print('finished')


if __name__ == "__main__":
    """ This is executed when run from the command line """
    main()