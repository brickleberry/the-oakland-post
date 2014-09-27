//
//  InfoAndBiosContent.swift
//  The Oakland Post
//
//  [title: content] dictionaries created from wrappers around attributed strings.
//
//  Created by Andrew Clissold on 9/12/14.
//  Copyright (c) 2014 Andrew Clissold. All rights reserved.
//

var infoTexts: [String: NSAttributedString] = [
    "About Us": aboutUs,
    "Contact Us": contactUs,
    "Staff": staff
]

var biosTexts: [String: NSAttributedString] = [
    "Kaylee Kean": kean,
    "Ali DeRees": deRees,
    "Jackson Gilbert": gilbert,
    "Haley Kotwicki": kotwicki,
    "Sean Miller": miller,
    "Sélah Fischer": fischer,
    "Dani Cojocari": cojocari,
    "Phillip Johnson": johnson,
    "Arkeem Thomas-Scott": thomasScott,
    "Jessie DiBattista": diBattista,
    "Megan Carson": carson,
    "Oona Goodin-Smith": goodinSmith,
    "Kaleigh Jerzykowski": jerzykowski,
    "Josh Soltman": soltman,
    "Nicollete Brikho": brikho,
    "Andrew Wernette": wernette,
    "Jasmine French": french,
    "Salwan Georges": georges,
    "Jake Alsko": alsko
]

// MARK: Text Styles

private func centeredParagraphStyle() -> NSMutableParagraphStyle {
    let style = NSMutableParagraphStyle()
    style.alignment = .Center
    return style
}

private func lineSpacingParagraphStyle() -> NSMutableParagraphStyle {
    let style = NSMutableParagraphStyle()
    style.lineSpacing = 1.5
    return style
}

private let heading = [
    NSFontAttributeName: UIFont(name: boldSansSerifName, size: CGFloat(24.0)),
    NSForegroundColorAttributeName: oaklandPostBlue,
    NSParagraphStyleAttributeName: centeredParagraphStyle()
]

private let subheading = [
    NSFontAttributeName: UIFont(name: boldSansSerifName, size: CGFloat(18.0))
]

private let text = [
    NSFontAttributeName: UIFont(name: serifName, size: CGFloat(16.0)),
    NSParagraphStyleAttributeName: lineSpacingParagraphStyle()
]

// MARK: Helpers

// An ordered array of (style, text) tuples.
typealias Component = (attributes: [NSObject: AnyObject], string: String)

private let extraSpace: Component = (text, "")

private func contentFromComponents(components: [Component]) -> NSAttributedString {
    var attributedString = NSMutableAttributedString()

    for component in components {
        let substring = NSMutableAttributedString(string: "\(component.string)\n\n", attributes: component.attributes)
        attributedString.appendAttributedString(substring)
    }

    return attributedString
}

// MARK: Info

private var aboutUs: NSAttributedString {
    let components: [Component] = [
        (text, "The Oakland Post is the student-run newspaper at Oakland University in Rochester, Mich. Founded in 1973, The Post has provided an independent source of news for students, faculty and alumni for decades."),
        (text, "Released every Wednesday throughout the fall and winter semesters (as well as monthly over the summer), The Post can be found in nearly all buildings on campus and in several off-campus locations in the surrounding area."),
        (text, "The Post is located in the basement of the Oakland Center next to the radio station and the Student Congress office. Visitors can park at metered spots in parking lot 2 or along Wilson Boulevard."),

        extraSpace,

        (subheading, "Mailing Address"),
        (text, "The Oakland Post\n61 Oakland Center\nRochester, MI 48306"),

        extraSpace,

        (subheading, "Letter Policy"),
        (text, "Writers must provide full name, class rank or university/community affiliation, phone number and field of study (if applicable). Please limit letters to 250 words or less. Letters may be edited for content, length and grammar."),

        extraSpace,

        (subheading, "Comment Policy"),
        (text, "The Oakland Post welcomes comments from readers of the oaklandpostonline.com, but we want the site to be a place where people can debate issues vigorously and remain respectful. In that respect, we ask that commenters refrain from personal attacks and profanity or language offensive to ordinary sensibility. Just like our Letter Policy, we ask that you use your full name and email (OU address if you’re a student) when commenting. Comments close after 14 days of publication."),

        extraSpace,

        (heading, "Network with\nThe Oakland Post"),
        (text, "facebook.com/theoakpost\n" +
         "twitter.com/theoaklandpost\n" +
         "youtube.com/theoaklandpostonline\n" +
         "flickr.com/photos/theoaklandpost\n" +
         "instagram.com/theoaklandpost"),

        extraSpace,

        (heading, "Employment"),
        (text, "Submit résumé, clips and cover letter to editor@oaklandpostonline.com and managing@oaklandpostonline.com.")
     ]

    return contentFromComponents(components)
}

private var contactUs: NSAttributedString {
    let components: [Component] = [
        (subheading, "Address"),
        (text, "The Oakland Post\n61 Oakland Center\nRochester, MI 48306"),

        (subheading, "Email"),
        (text, "editor@oaklandpostonline.com\nmanaging@oaklandpostonline.com"),

        (subheading, "Phone"),
        (text, "(248) 370-4268\n(248) 370-2537")
     ]

    return contentFromComponents(components)
}

private var staff: NSAttributedString {
    let components: [Component] = [
        (subheading, "Editor-in-Chief"),
        (text, "Oona Goodin-Smith\n" +
         "(248) 370-4268\n" +
         "editor@oaklandpostonline.com"),

        (subheading, "Managing Editor"),
        (text, "Kaylee Kean\n" +
         "(248) 370-2537\n" +
         "managing@oaklandpostonline.com"),

        (subheading, "Web Editor"),
        (text, "Jake Alsko\n" +
         "web@oaklandpostonline.com"),

        (subheading, "Life, Arts & Entertainment Editor"),
        (text, "Andrew Wernette\n" +
         "life@oaklandpostonline.com"),

        (subheading, "Campus & Administration Editor"),
        (text, "Ali DeRees\n" +
         "campus@oaklandpostonline.com"),

        (subheading, "Sports Editor"),
        (text, "Jackson Gilbert\n" +
         "sports@oaklandpostonline.com"),

        (subheading, "Photo Editor"),
        (text, "Salwan Georges\n" +
         "photos@oaklandpostonline.com"),

        (subheading, "Chief Copy Editor"),
        (text, "Haley Kotwicki"),

        (subheading, "Copy Editors"),
        (text, "Josh Soltman"),

        (subheading, "Graphic Design"),
        (text, "Kelly Lara\n" +
         "Benjamin DerMiner"),

        (subheading, "Photographers"),
        (text, "Michael Ferdinande\n" +
         "Danielle Cojocari\n" +
         "Katherine Snoad\n" +
         "Shannon Wilson"),

        (subheading, "Staff Reporters"),
        (text, "Matt Saulino\n" +
         "Sam Schlenner\n" +
         "Sean Miller\n" +
         "Joseph Bach\n" +
         "Kaseb Ahmad\n" +
         "Scott Davis\n" +
         "Jessie DiBattista"),

        (subheading, "Staff Interns/Bloggers"),
        (text, "Michael Pulis\n" +
         "Johnny Oldani\n" +
         "Bobby Boutin"),

        (subheading, "Distribution"),
        (text, "Andrew Greer - Distribution Director\n" +
         "Brian Murray - Distribution Manager\n" +
         "Ted Tansley\n" +
         "Jacob Chessrown"),

        (subheading, "Advertising"),
        (text, "ads@oaklandpostonline.com\n" +
         "(248) 370-4269"),

        (subheading, "Advisers"),
        (text, "Holly Gilbert\n" +
         "(248) 370-4138\n" +
         "shreve@oakland.edu\n" +
         "\n" +
         "Don Ritenburgh\n" +
         "(248) 370-2533\n" +
         "ritenbur@oakland.edu")
     ]

    return contentFromComponents(components)
}

// MARK: Bios

private var kean: NSAttributedString {
    let components: [Component] = [
        (subheading, "Managing Editor, senior journalism major, broadcasting minor"),
        (text, "I have been writing for The Oakland Post since September 2013, and became Managing Editor around March 2014. I love writing and learning, I love my job and the people I have met through it, I love chocolate, and I love OU!"),
        (text, "Contact me at: managing@oaklandpostonline.com")
    ]
    return contentFromComponents(components)
}

private var deRees: NSAttributedString {
    let components: [Component] = [
        (subheading, "Campus & Administration Editor, senior journalism major"),
        (text, "I am a journalism major and Spanish minor here at OU. I love running and anything automotive related. I truly love my job, it is the most rewarding experience I've had at college thus far!"),
        (text, "Contact me at: apderees@oakland.edu")
    ]
    return contentFromComponents(components)
}

private var gilbert: NSAttributedString {
    let components: [Component] = [
        (subheading, "Sports Editor, senior political science major"),
        (text, "I’m the Sports Editor at The Post. I can’t play any sports very well so I write about them instead."),
        (text, "Contact me at: jjgilber@oakland.edu")
    ]
    return contentFromComponents(components)
}

private var kotwicki: NSAttributedString {
    let components: [Component] = [
        (subheading, "Chief Copy Editor, senior English major"),
        (text, "I have been editing, writing and photographing for The Oakland Post since May 2012.  I seem to be the mother bear of our staff, which I take somewhat seriously.  My passions outside writing are rescuing animals and painting."),
        (text, "Contact me at: hekotwick@oakland.edu ")
    ]
    return contentFromComponents(components)
}

private var miller: NSAttributedString {
    let components: [Component] = [
        (subheading, "Reporter and Photographer, senior journalism major"),
        (text, "You'll only find me around these parts during the school year. I hail from Northern Michigan where it's winter ten months out of the year and people hunt deer with their cars. I’ve been writing for the Oakland Post since April 2014 and love contributing to a great news organization that OU offers."),
        (text, "Contact me at: semille3@oakland.edu")
    ]
    return contentFromComponents(components)
}

private var fischer: NSAttributedString {
    let components: [Component] = [
        (subheading, "Reporter, senior journalism major, PR minor"),
        (text, "Being a new reporter I already love working for The Oakland Post! I love writing, traveling and meeting new people. I truly believe a job you love is no job at all, and that's exactly how I feel about working with the Post!"),
        (text, "Contact me at: scfische@oakland.edu")
    ]
    return contentFromComponents(components)
}

private var cojocari: NSAttributedString {
    let components: [Component] = [
        (subheading, "Photographer, creative writing major"),
            (text, "I started working for The Oakland Post in May 2014. Although I love taking photographs, my passion is for writing fiction and reading. One day, I hope to publish a novel that everyone will enjoy."),
        (text, "Contact me at: dmcojoca@oakland.edu")
    ]
    return contentFromComponents(components)
}

private var johnson: NSAttributedString {
    let components: [Component] = [
        (subheading, "Reporter, senior finance major"),
            (text, "Since starting for The Oakland Post, Phillip has a new found appreciation for journalism and news media. Outside of writing Phillip enjoys kayaking, yoga and helping people."),
        (text, "Contact me at: pajohns4@oakland.edu")
    ]
    return contentFromComponents(components)
}

private var thomasScott: NSAttributedString {
    let components: [Component] = [
        (subheading, "Promotions/Social Media Manager, senior communication major"),
        (text, "This is my first year working for The Oakland Post. I am also involved with the Student Program Board and with Athletics. I love watching movies and listening to new artists while I'm on the go."),
        (text, "Contact me at: ascott24@oakland.edu.")
    ]
    return contentFromComponents(components)
}

private var diBattista: NSAttributedString {
    let components: [Component] = [
        (subheading, "Reporter, freshman psychology major"),
        (text, "My name is Jessie, I am a Reporter, this is my first year working for The Oakland Post, and I have loved every minute of it! I am a Freshman and I am excited to continue my adventure at OU!"),
        (text, "Contact me at: jldibattista@oakland.edu")
    ]
    return contentFromComponents(components)
}

private var carson: NSAttributedString {
    let components: [Component] = [
        (subheading, "Copy Editor, freshman"),
        (text, "Megan is a freshman and new member to the Oakland Post staff. She gained knowledge and experience in writing and layout from her yearbook class at Oxford High School. Her goal is to help maintain the Oakland Post's reputation as well as to improve it. When she is not working on the newspaper or in class, Megan enjoys hanging out with friends, eating Oreos, and watching Netflix."),
        (text, "Contact me at: mecarson@oakland.edu")
    ]
    return contentFromComponents(components)
}

private var goodinSmith: NSAttributedString {
    let components: [Component] = [
        (subheading, "TODO"),
        (text, "TODO"),
        (text, "Contact me at: TODO"),
    ]
    return contentFromComponents(components)
}

private var jerzykowski: NSAttributedString {
    let components: [Component] = [
        (subheading, "TODO"),
        (text, "TODO"),
        (text, "Contact me at: TODO"),
    ]
    return contentFromComponents(components)
}

private var soltman: NSAttributedString {
    let components: [Component] = [
        (subheading, "TODO"),
        (text, "TODO"),
        (text, "Contact me at: TODO"),
    ]
    return contentFromComponents(components)
}

private var brikho: NSAttributedString {
    let components: [Component] = [
        (subheading, "TODO"),
        (text, "TODO"),
        (text, "Contact me at: TODO"),
    ]
    return contentFromComponents(components)
}

private var wernette: NSAttributedString {
    let components: [Component] = [
        (subheading, "TODO"),
        (text, "TODO"),
        (text, "Contact me at: TODO"),
    ]
    return contentFromComponents(components)
}

private var french: NSAttributedString {
    let components: [Component] = [
        (subheading, "TODO"),
        (text, "TODO"),
        (text, "Contact me at: TODO"),
    ]
    return contentFromComponents(components)
}

private var georges: NSAttributedString {
    let components: [Component] = [
        (subheading, "TODO"),
        (text, "TODO"),
        (text, "Contact me at: TODO"),
    ]
    return contentFromComponents(components)
}

private var alsko: NSAttributedString {
    let components: [Component] = [
        (subheading, "TODO"),
        (text, "TODO"),
        (text, "Contact me at: TODO"),
    ]
    return contentFromComponents(components)
}
