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
    SelectionFields: [ title, author_ID ],
    LineItem: [
      { Value: ID },
      { Value: title },
      { Value: author.name, Label: 'Author' },
      { Value: stock },
      { Value: price }
    ]
  }
);

annotate CatalogService.Books with {
  ID     @title: 'ID';
  title  @title: 'Title';
  stock  @title: 'Stock';
  price  @title: 'Price';
};
