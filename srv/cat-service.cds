using my.bookshop as my from '../db/schema';

service CatalogService {
  entity Books as projection on my.Books;
  entity Authors as projection on my.Authors;
}

// UI Annotations for Fiori Elements
annotate CatalogService.Books with @(
  UI: {
    HeaderInfo: {
      TypeName: 'Book',
      TypeNamePlural: 'Books',
      Title: { Value: title }
    },
    SelectionFields: [ title ],
    LineItem: [
      { $Type: 'UI.DataField', Value: ID, Label: 'ID', ![@UI.Importance]: #High },
      { $Type: 'UI.DataField', Value: title, Label: 'Title', ![@UI.Importance]: #High },
      { $Type: 'UI.DataField', Value: author_ID, Label: 'Author ID', ![@UI.Importance]: #High },
      { $Type: 'UI.DataField', Value: stock, Label: 'Stock', ![@UI.Importance]: #High },
      { $Type: 'UI.DataField', Value: price, Label: 'Price', ![@UI.Importance]: #High }
    ],
    PresentationVariant: {
      Text: 'Default',
      SortOrder: [{ Property: title, Descending: false }],
      Visualizations: ['@UI.LineItem']
    }
  }
);
