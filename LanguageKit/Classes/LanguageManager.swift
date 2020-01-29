import Foundation

public protocol ILanguageManager {
    var currentLanguage: String { get set }
    var availableLanguages: [String] { get }
    var currentLanguageDisplayName: String? { get }
    func displayName(language: String) -> String?
    func nativeDisplayName(language: String) -> String?
}

public class LanguageManager {
    public static let shared = LanguageManager()

    public var currentLocale: Locale
    private var currentBundle: Bundle?

    init() {
        let language = LanguageManager.storedCurrentLanguage ?? LanguageManager.preferredLanguage ?? LanguageManager.fallbackLanguage
        currentLocale = Locale(identifier: language)
        currentBundle = LanguageManager.bundle(language: language)
    }

    private func localize(string: String, language: String) -> String? {
        if let path = Bundle.main.path(forResource: language, ofType: "lproj"), let bundle = Bundle(path: path) {
            return bundle.localizedString(forKey: string, value: nil, table: nil)
        }
        return nil
    }


}

extension LanguageManager {
    private static let userDefaultsKey = "current_language"

    private static var storedCurrentLanguage: String? {
        UserDefaults.standard.value(forKey: LanguageManager.userDefaultsKey) as? String
    }

    private static func store(currentLanguage: String) {
        UserDefaults.standard.set(currentLanguage, forKey: LanguageManager.userDefaultsKey)
    }

}

extension LanguageManager: ILanguageManager {

    public var currentLanguage: String {
        get {
            currentLocale.identifier
        }
        set {
            currentLocale = Locale(identifier: newValue)
            currentBundle = LanguageManager.bundle(language: newValue)
            LanguageManager.store(currentLanguage: newValue)
        }
    }

    public var availableLanguages: [String] {
        LanguageManager.availableLanguages
    }

    public var currentLanguageDisplayName: String? {
        displayName(language: currentLanguage)
    }

    public func displayName(language: String) -> String? {
        (currentLocale as NSLocale).displayName(forKey: NSLocale.Key.identifier, value: language)?.capitalized
    }

    public func nativeDisplayName(language: String) -> String? {
        let locale = NSLocale(localeIdentifier: language)
        return locale.displayName(forKey: NSLocale.Key.identifier, value: language)?.capitalized
    }

}

extension LanguageManager {

    public func localize(string: String) -> String {
        currentBundle?.localizedString(forKey: string, value: nil, table: nil) ?? string
    }

    public func localize(string: String, arguments: [CVarArg]) -> String {
        String(format: localize(string: string), locale: currentLocale, arguments: arguments)
    }

}

extension LanguageManager {
    static let fallbackLanguage = "en"

    static var preferredLanguage: String? {
        Bundle.main.preferredLocalizations.first { availableLanguages.contains($0) }
    }

    static var availableLanguages: [String] {
        Bundle.main.localizations.sorted()
    }

    static func bundle(language: String) -> Bundle? {
        guard let path = Bundle.main.path(forResource: language, ofType: "lproj") else {
            return nil
        }

        return Bundle(path: path)
    }

}

extension Locale {

    public static var appCurrent: Locale {
        LanguageManager.shared.currentLocale
    }

}