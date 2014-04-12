REM  *****  BASIC  *****

sub HighlightFormats

    Dim oReplace As Object
    Dim I

    ' Search: bold, italic, underline, supscript, subscript
    Dim Searches(4)
    Dim SearchBold(0)      As New com.sun.star.beans.PropertyValue
    Dim SearchOblique(0)   As New com.sun.star.beans.PropertyValue
    Dim SearchItalic(0)    As New com.sun.star.beans.PropertyValue
    Dim SearchUnderline(0) As New com.sun.star.beans.PropertyValue
    Dim SearchSupscript(1) As New com.sun.star.beans.PropertyValue
    Dim SearchSubscript(1) As New com.sun.star.beans.PropertyValue

    Searches = Array(SearchBold, SearchOblique, SearchItalic, SearchUnderline, SearchSupscript, SearchSubscript)

    oDescriptor = thisComponent.createReplaceDescriptor
    'oDescriptor.SearchString = ".+"
    'oDescriptor.ReplaceString = "&"
    'oDescriptor.SearchRegularExpression=True
    oDescriptor.searchStyles = True
    oDescriptor.searchAll    = True

    SearchBold(0).Name  = "CharWeight"
    SearchBold(0).Value = 150

    SearchOblique(0).Name  = "CharPosture"
    SearchOblique(0).Value = 1

    SearchItalic(0).Name  = "CharPosture"
    SearchItalic(0).Value = 2

    SearchUnderline(0).Name  = "CharUnderline"
    SearchUnderline(0).Value = 1

    SearchSupscript(0).Name  = "CharEscapement"
    SearchSupscript(0).Value = 33
    SearchSupscript(1).Name  = "CharEscapementHeight"
    SearchSupscript(1).Value = 58

    SearchSubscript(0).Name  = "CharEscapement"
    SearchSubscript(0).Value = -33
    SearchSubscript(1).Name  = "CharEscapementHeight"
    SearchSubscript(1).Value = 58

    ' SEARCH & FUCSIA
    For I = 0 To uBound(Searches())
        oDescriptor.SetSearchAttributes(Searches(I))
        oFound = thisComponent.findFirst(oDescriptor)

        Do While Not isNull(oFound)
            oFound.CharBackColor = RGB(255,0,255)
            oFound = thisComponent.findNext(oFound.End, oDescriptor)
        Loop
    Next I

End Sub
