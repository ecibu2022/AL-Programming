xmlport 5101 "XML Port Object"
{
    Caption = 'XML Port Object';
    // Allows us to do both import and export
    // Direction=Both;
    // Specifies the format of data we are going to deal with
    Format=VariableText;
    // Request page allows us to present a user with a page to choose either to export or import options
    // UseRequestPage=true;

    schema
    {
        // textelement allows you to define the name of the root node
        textelement(RootNodeName)
        {
            // You define the name of the table
            tableelement(XMLPortExample; Customer)
            {
                 XmlName='XMLPortExample';
                //  saves the records imported int the table
                 AutoSave=true;
                //  Updates the records imported in the table
                 AutoUpdate=true;
                //  Replaces old recpords with new ones if they have the same primary key
                 AutoReplace=false;

                 fieldelement(Name; XMLPortExample.Name)
                 {

                 }
                 fieldelement(Address; XMLPortExample.Address)
                 {

                 }
                  fieldelement(City; XMLPortExample.City)
                 {

                 }
            }
        }
    }


}
