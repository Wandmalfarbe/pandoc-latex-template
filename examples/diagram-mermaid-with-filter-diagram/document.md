---
title: "Mermaid Diagrams"
author: [Pascal Wagler]
date: "2026-02-01"
subject: "Markdown"
keywords: [Markdown, Example, Diagram, Filter, Mermaid]
lang: "en"
colorlinks: true
diagram:
  engine:
    mermaid:
      execpath: ['mmdc', '-p', 'puppeteer-config.json']
...

# Mermaid Diagrams

This example document uses the [pandoc Lua filter `diagram`] to generate Mermaid diagrams from embedded code blocks. [Mermaid] needs to be installed before the document can be rendered with the option `--lua-filter diagram.lua`.

## Entity Relationship Diagram

``` {.mermaid caption="This entity relationship diagram has a caption.
The diagram is copied from the Mermaid documentation at <https://mermaid.ai/open-source/syntax/entityRelationshipDiagram.html#attribute-keys-and-comments>.
The caption can contain long explanatory text and is now filled with
placeholder text.
Porrigitur et Pallas nuper longusque cratere habuisse sepulcro pectore fertur.
Laudat ille auditi. vertitur iura tum nepotis causa; motus. Diva virtus! Acrota
destruitis vos iubet quo et classis excessere Scyrumve spiro subitusque mente
Pirithoi abstulit, lapides."}
---
config:
  theme: neutral
---
erDiagram
    CAR ||--o{ NAMED-DRIVER : allows
    CAR {
        string registrationNumber PK
        string make
        string model
        string[] parts
    }
    PERSON ||--o{ NAMED-DRIVER : is
    PERSON {
        string driversLicense PK "The license #"
        string(99) firstName "Only 99 characters are allowed"
        string lastName
        string phone UK
        int age
    }
    NAMED-DRIVER {
        string carRegistrationNumber PK, FK
        string driverLicence PK, FK
    }
    MANUFACTURER only one to zero or more CAR : makes
```

## Sequence Diagram

The following sequence diagram omits a caption but uses the `forest` theme. A comprehensive overview of theming-related configuration options [can be found in the Mermaid documentation].

``` mermaid
---
config:
  theme: forest
---
sequenceDiagram
    participant web as Web Browser
    participant blog as Blog Service
    participant account as Account Service
    participant mail as Mail Service
    participant db as Storage

    Note over web,db: The user must be logged in to submit blog posts
    web->>+account: Logs in using credentials
    account->>db: Query stored accounts
    db->>account: Respond with query result

    alt Credentials not found
        account->>web: Invalid credentials
    else Credentials found
        account->>-web: Successfully logged in

        Note over web,db: When the user is authenticated, they can now submit new posts
        web->>+blog: Submit new post
        blog->>db: Store post data

        par Notifications
            blog--)mail: Send mail to blog subscribers
            blog--)db: Store in-site notifications
        and Response
            blog-->>-web: Successfully posted
        end
    end
```

[can be found in the Mermaid documentation]: https://mermaid.ai/open-source/config/theming.html
[pandoc Lua filter `diagram`]: https://github.com/pandoc-ext/diagram
[Mermaid]: https://mermaid.js.org/
