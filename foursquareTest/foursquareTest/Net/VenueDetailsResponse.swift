//
//  VenueDetailsResponse.swift
//  foursquareTest
//
//  Created by Denis Kotelnikov on 16.11.2020.

// This file was generated from JSON Schema using quicktype, do not modify it directly.


import Foundation


// MARK: - Response
public class Response: Codable {
    let venue: Venue?

    init(venue: Venue?) {
        self.venue = venue
    }
}

// MARK: - Venue
public class Venue: Codable {
    let id, name: String?
    let contact: Contact?
    let location: Location?
    let canonicalURL: String?
    let categories: [VenueCategory]?
    let verified: Bool?
    let stats: Stats?
    let url: String?
    let likes: Likes?
    let rating: Double?
    let ratingColor: String?
    let ratingSignals: Int?
    let beenHere: BeenHere?
    let photos: Listed?
    let venueDescription, storeID: String?
    let page: Page?
    let hereNow: HereNow?
    let createdAt: Int?
    let tips: Listed?
    let shortURL: String?
    let timeZone: String?
    let listed: Listed?
    let phrases: [Phrase]?
    let hours, popular: Hours?
    let pageUpdates, inbox: Inbox?
    let venueChains: [JSONAny]?
    let attributes: Attributes?
    let bestPhoto: BestPhotoClass?

    enum CodingKeys: String, CodingKey {
        case id, name, contact, location
        case canonicalURL = "canonicalUrl"
        case categories, verified, stats, url, likes, rating, ratingColor, ratingSignals, beenHere, photos
        case venueDescription = "description"
        case storeID = "storeId"
        case page, hereNow, createdAt, tips
        case shortURL = "shortUrl"
        case timeZone, listed, phrases, hours, popular, pageUpdates, inbox, venueChains, attributes, bestPhoto
    }

    public init(id: String?, name: String?, contact: Contact?, location: Location?, canonicalURL: String?, categories: [VenueCategory]?, verified: Bool?, stats: Stats?, url: String?, likes: Likes?, rating: Double?, ratingColor: String?, ratingSignals: Int?, beenHere: BeenHere?, photos: Listed?, venueDescription: String?, storeID: String?, page: Page?, hereNow: HereNow?, createdAt: Int?, tips: Listed?, shortURL: String?, timeZone: String?, listed: Listed?, phrases: [Phrase]?, hours: Hours?, popular: Hours?, pageUpdates: Inbox?, inbox: Inbox?, venueChains: [JSONAny]?, attributes: Attributes?, bestPhoto: BestPhotoClass?) {
        self.id = id
        self.name = name
        self.contact = contact
        self.location = location
        self.canonicalURL = canonicalURL
        self.categories = categories
        self.verified = verified
        self.stats = stats
        self.url = url
        self.likes = likes
        self.rating = rating
        self.ratingColor = ratingColor
        self.ratingSignals = ratingSignals
        self.beenHere = beenHere
        self.photos = photos
        self.venueDescription = venueDescription
        self.storeID = storeID
        self.page = page
        self.hereNow = hereNow
        self.createdAt = createdAt
        self.tips = tips
        self.shortURL = shortURL
        self.timeZone = timeZone
        self.listed = listed
        self.phrases = phrases
        self.hours = hours
        self.popular = popular
        self.pageUpdates = pageUpdates
        self.inbox = inbox
        self.venueChains = venueChains
        self.attributes = attributes
        self.bestPhoto = bestPhoto
    }
}

// MARK: - Category
public class VenueCategory: Codable {
    let id, name, pluralName, shortName: String?
    let icon: Icon?
    let primary: Bool?

    init(id: String?, name: String?, pluralName: String?, shortName: String?, icon: Icon?, primary: Bool?) {
        self.id = id
        self.name = name
        self.pluralName = pluralName
        self.shortName = shortName
        self.icon = icon
        self.primary = primary
    }
}

public class FoursquareDetailResponse: Codable {
    let meta: Meta?
    let response: Response?

    init(meta: Meta?, response: Response?) {
        self.meta = meta
        self.response = response
    }
}

public class FoursquareResponse: Codable {
    let meta: Meta?
    let response: VenueListResponse?

    init(meta: Meta?, response: VenueListResponse?) {
        self.meta = meta
        self.response = response
    }
}

// MARK: - Meta
public class Meta: Codable {
    let code: Int?
    let requestID: String?

    enum CodingKeys: String, CodingKey {
        case code
        case requestID = "requestId"
    }

    init(code: Int?, requestID: String?) {
        self.code = code
        self.requestID = requestID
    }
}

// MARK: - Response
public class VenueListResponse: Codable {
    let venues: [Venue]?

    init(venues: [Venue]?) {
        self.venues = venues
    }
}

// MARK: - Icon
public class Icon: Codable {
    let iconPrefix: String?
    let suffix: String?

    enum CodingKeys: String, CodingKey {
        case iconPrefix = "prefix"
        case suffix
    }

    init(iconPrefix: String?, suffix: String?) {
        self.iconPrefix = iconPrefix
        self.suffix = suffix
    }
}

// MARK: - VenuePage
public class VenuePage: Codable {
    let id: String?

    init(id: String?) {
        self.id = id
    }
}


// MARK: - Attributes
public class Attributes: Codable {
    let groups: [Group]?

    init(groups: [Group]?) {
        self.groups = groups
    }
}

// MARK: - HereNow
public class HereNow: Codable {
    let count: Int?
    let groups: [Group]?
    let summary: String?

    init(count: Int?, groups: [Group]?, summary: String?) {
        self.count = count
        self.groups = groups
        self.summary = summary
    }
}

// MARK: - GroupItem
public class GroupItem: Codable {
    let displayName, displayValue, id, name: String?
    let itemDescription, type: String?
    let user: BestPhotoUser?
    let editable, itemPublic, collaborative: Bool?
    let url: String?
    let canonicalURL: String?
    let createdAt, updatedAt: Int?
    let photo: BestPhotoClass?
    let followers: Tips?
    let listItems: Inbox?
    let source: Source?
    let itemPrefix: String?
    let suffix: String?
    let width, height: Int?
    let visibility, text: String?
    let photourl: String?
    let lang: String?
    let likes: HereNow?
    let logView: Bool?
    let agreeCount, disagreeCount: Int?
    let todo: Tips?
    let editedAt: Int?
    let authorInteractionType: String?

    enum CodingKeys: String, CodingKey {
        case displayName, displayValue, id, name
        case itemDescription = "description"
        case type, user, editable
        case itemPublic = "public"
        case collaborative, url
        case canonicalURL = "canonicalUrl"
        case createdAt, updatedAt, photo, followers, listItems, source
        case itemPrefix = "prefix"
        case suffix, width, height, visibility, text, photourl, lang, likes, logView, agreeCount, disagreeCount, todo, editedAt, authorInteractionType
    }

    init(displayName: String?, displayValue: String?, id: String?, name: String?, itemDescription: String?, type: String?, user: BestPhotoUser?, editable: Bool?, itemPublic: Bool?, collaborative: Bool?, url: String?, canonicalURL: String?, createdAt: Int?, updatedAt: Int?, photo: BestPhotoClass?, followers: Tips?, listItems: Inbox?, source: Source?, itemPrefix: String?, suffix: String?, width: Int?, height: Int?, visibility: String?, text: String?, photourl: String?, lang: String?, likes: HereNow?, logView: Bool?, agreeCount: Int?, disagreeCount: Int?, todo: Tips?, editedAt: Int?, authorInteractionType: String?) {
        self.displayName = displayName
        self.displayValue = displayValue
        self.id = id
        self.name = name
        self.itemDescription = itemDescription
        self.type = type
        self.user = user
        self.editable = editable
        self.itemPublic = itemPublic
        self.collaborative = collaborative
        self.url = url
        self.canonicalURL = canonicalURL
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.photo = photo
        self.followers = followers
        self.listItems = listItems
        self.source = source
        self.itemPrefix = itemPrefix
        self.suffix = suffix
        self.width = width
        self.height = height
        self.visibility = visibility
        self.text = text
        self.photourl = photourl
        self.lang = lang
        self.likes = likes
        self.logView = logView
        self.agreeCount = agreeCount
        self.disagreeCount = disagreeCount
        self.todo = todo
        self.editedAt = editedAt
        self.authorInteractionType = authorInteractionType
    }
}

// MARK: - Location
public class Location: Codable {
    let address, crossStreet: String?
    let lat, lng: Double?
    let labeledLatLngs: [LabeledLatLng]?
    let distance: Int?
    let postalCode, cc, city, state: String?
    let country: String?
    let formattedAddress: [String]?

    init(address: String?, crossStreet: String?, lat: Double?, lng: Double?, labeledLatLngs: [LabeledLatLng]?, distance: Int?, postalCode: String?, cc: String?, city: String?, state: String?, country: String?, formattedAddress: [String]?) {
        self.address = address
        self.crossStreet = crossStreet
        self.lat = lat
        self.lng = lng
        self.labeledLatLngs = labeledLatLngs
        self.distance = distance
        self.postalCode = postalCode
        self.cc = cc
        self.city = city
        self.state = state
        self.country = country
        self.formattedAddress = formattedAddress
    }
}

// MARK: - LabeledLatLng
public class LabeledLatLng: Codable {
    let label: String?
    let lat, lng: Double?

    init(label: String?, lat: Double?, lng: Double?) {
        self.label = label
        self.lat = lat
        self.lng = lng
    }
}

// MARK: - Group
public class Group: Codable {
    let type, name, summary: String?
    let count: Int?
    let items: [GroupItem]?

    init(type: String?, name: String?, summary: String?, count: Int?, items: [GroupItem]?) {
        self.type = type
        self.name = name
        self.summary = summary
        self.count = count
        self.items = items
    }
}

// MARK: - Tips
public class Tips: Codable {
    let count: Int?

    init(count: Int?) {
        self.count = count
    }
}

// MARK: - Inbox
public class Inbox: Codable {
    let count: Int?
    let items: [InboxItem]?

    init(count: Int?, items: [InboxItem]?) {
        self.count = count
        self.items = items
    }
}

// MARK: - InboxItem
public class InboxItem: Codable {
    let id: String?
    let createdAt: Int?
    let photo: BestPhotoClass?
    let url: String?

    init(id: String?, createdAt: Int?, photo: BestPhotoClass?, url: String?) {
        self.id = id
        self.createdAt = createdAt
        self.photo = photo
        self.url = url
    }
}

// MARK: - BestPhotoClass
public class BestPhotoClass: Codable {
    let id: String?
    let createdAt: Int?
    let source: Source?
    let photoPrefix: String?
    let suffix: String?
    let width, height: Int?
    let visibility: String?
    let user: BestPhotoUser?

    enum CodingKeys: String, CodingKey {
        case id, createdAt, source
        case photoPrefix = "prefix"
        case suffix, width, height, visibility, user
    }

    init(id: String?, createdAt: Int?, source: Source?, photoPrefix: String?, suffix: String?, width: Int?, height: Int?, visibility: String?, user: BestPhotoUser?) {
        self.id = id
        self.createdAt = createdAt
        self.source = source
        self.photoPrefix = photoPrefix
        self.suffix = suffix
        self.width = width
        self.height = height
        self.visibility = visibility
        self.user = user
    }
}

// MARK: - Source
public class Source: Codable {
    let name: String?
    let url: String?

    init(name: String?, url: String?) {
        self.name = name
        self.url = url
    }
}

// MARK: - BestPhotoUser
public class BestPhotoUser: Codable {
    let id, firstName: String?
    let photo: IconClass?
    let type, lastName: String?

    init(id: String?, firstName: String?, photo: IconClass?, type: String?, lastName: String?) {
        self.id = id
        self.firstName = firstName
        self.photo = photo
        self.type = type
        self.lastName = lastName
    }
}

// MARK: - IconClass
public class IconClass: Codable {
    let photoPrefix: String?
    let suffix: String?

    enum CodingKeys: String, CodingKey {
        case photoPrefix = "prefix"
        case suffix
    }

    init(photoPrefix: String?, suffix: String?) {
        self.photoPrefix = photoPrefix
        self.suffix = suffix
    }
}

// MARK: - BeenHere
public class BeenHere: Codable {
    let count, unconfirmedCount: Int?
    let marked: Bool?
    let lastCheckinExpiredAt: Int?

    init(count: Int?, unconfirmedCount: Int?, marked: Bool?, lastCheckinExpiredAt: Int?) {
        self.count = count
        self.unconfirmedCount = unconfirmedCount
        self.marked = marked
        self.lastCheckinExpiredAt = lastCheckinExpiredAt
    }
}


// MARK: - Contact
public class Contact: Codable {
    let phone, formattedPhone, twitter, instagram: String?
    let facebook, facebookUsername, facebookName: String?

    init(phone: String?, formattedPhone: String?, twitter: String?, instagram: String?, facebook: String?, facebookUsername: String?, facebookName: String?) {
        self.phone = phone
        self.formattedPhone = formattedPhone
        self.twitter = twitter
        self.instagram = instagram
        self.facebook = facebook
        self.facebookUsername = facebookUsername
        self.facebookName = facebookName
    }
}

// MARK: - Hours
public class Hours: Codable {
    let status: String?
    let isOpen, isLocalHoliday: Bool?
    let timeframes: [Timeframe]?

    init(status: String?, isOpen: Bool?, isLocalHoliday: Bool?, timeframes: [Timeframe]?) {
        self.status = status
        self.isOpen = isOpen
        self.isLocalHoliday = isLocalHoliday
        self.timeframes = timeframes
    }
}

// MARK: - Timeframe
public class Timeframe: Codable {
    let days: String?
    let includesToday: Bool?
    let timeframeOpen: [Open]?
    let segments: [JSONAny]?

    enum CodingKeys: String, CodingKey {
        case days, includesToday
        case timeframeOpen = "open"
        case segments
    }

    init(days: String?, includesToday: Bool?, timeframeOpen: [Open]?, segments: [JSONAny]?) {
        self.days = days
        self.includesToday = includesToday
        self.timeframeOpen = timeframeOpen
        self.segments = segments
    }
}

// MARK: - Open
public class Open: Codable {
    let renderedTime: String?

    init(renderedTime: String?) {
        self.renderedTime = renderedTime
    }
}

// MARK: - Likes
public class Likes: Codable {
    let count: Int?
    let summary: String?

    init(count: Int?, summary: String?) {
        self.count = count
        self.summary = summary
    }
}

// MARK: - Listed
public class Listed: Codable {
    let count: Int?
    let groups: [Group]?

    init(count: Int?, groups: [Group]?) {
        self.count = count
        self.groups = groups
    }
}

// MARK: - Page
public class Page: Codable {
    let pageInfo: PageInfo?
    let user: PageUser?

    init(pageInfo: PageInfo?, user: PageUser?) {
        self.pageInfo = pageInfo
        self.user = user
    }
}

// MARK: - PageInfo
public class PageInfo: Codable {
    let pageInfoDescription: String?
    let banner: String?
    let links: Inbox?

    enum CodingKeys: String, CodingKey {
        case pageInfoDescription = "description"
        case banner, links
    }

    init(pageInfoDescription: String?, banner: String?, links: Inbox?) {
        self.pageInfoDescription = pageInfoDescription
        self.banner = banner
        self.links = links
    }
}

// MARK: - PageUser
public class PageUser: Codable {
    let id, firstName: String?
    let photo: IconClass?
    let type: String?
    let tips: Tips?
    let lists: Attributes?
    let bio: String?

    init(id: String?, firstName: String?, photo: IconClass?, type: String?, tips: Tips?, lists: Attributes?, bio: String?) {
        self.id = id
        self.firstName = firstName
        self.photo = photo
        self.type = type
        self.tips = tips
        self.lists = lists
        self.bio = bio
    }
}

// MARK: - Phrase
public class Phrase: Codable {
    let phrase: String?
    let sample: Sample?
    let count: Int?

    init(phrase: String?, sample: Sample?, count: Int?) {
        self.phrase = phrase
        self.sample = sample
        self.count = count
    }
}

// MARK: - Sample
public class Sample: Codable {
    let entities: [Entity]?
    let text: String?

    init(entities: [Entity]?, text: String?) {
        self.entities = entities
        self.text = text
    }
}

// MARK: - Entity
public class Entity: Codable {
    let indices: [Int]?
    let type: String?

    init(indices: [Int]?, type: String?) {
        self.indices = indices
        self.type = type
    }
}

// MARK: - Stats
public class Stats: Codable {
    let checkinsCount, usersCount, tipCount, visitsCount: Int?

    init(checkinsCount: Int?, usersCount: Int?, tipCount: Int?, visitsCount: Int?) {
        self.checkinsCount = checkinsCount
        self.usersCount = usersCount
        self.tipCount = tipCount
        self.visitsCount = visitsCount
    }
}

// MARK: - Encode/decode helpers

public class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

public class JSONCodingKey: CodingKey {
    let key: String

    required public init?(intValue: Int) {
        return nil
    }

    required public init?(stringValue: String) {
        key = stringValue
    }

    public var intValue: Int? {
        return nil
    }

    public var stringValue: String {
        return key
    }
}

public class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
