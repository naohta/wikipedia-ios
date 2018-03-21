import Foundation

// Utilize this class to define localized strings that are used in multiple places in similar contexts.
// There should only be one WMF Localized String function in code for every localization key.
// If the same string value is used in different contexts, use different localization keys.

@objc(WMFCommonStrings)
public class CommonStrings: NSObject {
    @objc public static let articleCountFormat = WMFLocalizedString("places-filter-top-articles-count", value:"{{PLURAL:%1$d|%1$d article|%1$d articles}}", comment: "Describes how many top articles are found in the top articles filter - %1$d is replaced with the number of articles")
    @objc public static let readingListCountFormat = WMFLocalizedString("reading-lists-count", value:"{{PLURAL:%1$d|%1$d reading list|%1$d reading lists}}", comment: "Describes the number of reading lists - %1$d is replaced with the number of reading lists")
    
    @objc public static let shortSavedTitle = WMFLocalizedString("action-saved", value: "Saved", comment: "Short title for the save button in the 'Saved' state - Indicates the article is saved. Please use the shortest translation possible.\n{{Identical|Saved}}")
    @objc public static let accessibilitySavedTitle = WMFLocalizedString("action-saved-accessibility", value: "Saved. Activate to unsave.", comment: "Accessibility title for the 'Unsave' action\n{{Identical|Saved}}")
    @objc public static let shortUnsaveTitle = WMFLocalizedString("action-unsave", value: "Unsave", comment: "Short title for the 'Unsave' action. Please use the shortest translation possible.\n{{Identical|Saved}}")
    
    @objc public static let accessibilitySavedNotification = WMFLocalizedString("action-saved-accessibility-notification", value: "Article saved for later", comment: "Notification spoken after user saves an article for later.")
     @objc public static let accessibilityUnsavedNotification = WMFLocalizedString("action-unsaved-accessibility-notification", value: "Article unsaved", comment: "Notification spoken after user removes an article from Saved articles.")
    
    @objc public static func articleDeletedNotification(articleCount: Int) -> String {
        return String.localizedStringWithFormat(WMFLocalizedString("article-deleted-accessibility-notification", value: "{{PLURAL:%1$d|article|articles}} deleted", comment: "Notification spoken after user deletes an article from the list."), articleCount)
    }
    
    @objc public static func unsaveArticleAndRemoveFromListsTitle(articleCount: Int) -> String {
        return String.localizedStringWithFormat(WMFLocalizedString("saved-unsave-article-and-remove-from-reading-lists-title", value: "Unsave {{PLURAL:%1$d|article|articles}}?", comment: "Title of the alert action that unsaves a selected article and removes it from all associated reading lists"), articleCount)
    }
    @objc public static func unsaveArticleAndRemoveFromListsMessage(articleCount: Int) -> String {
        return String.localizedStringWithFormat(WMFLocalizedString("saved-unsave-article-and-remove-from-reading-lists-message", value: "Unsaving {{PLURAL:%1$d|this article will remove it|these articles will remove them}} from all associated reading lists", comment: "Message of the alert action that unsaves a selected article and removes it from all associated reading lists"), articleCount)
    }
    
    @objc public static let shortSaveTitle = WMFLocalizedString("action-save", value: "Save", comment: "Title for the 'Save' action\n{{Identical|Save}}")
    @objc public static let savedTitle:String = CommonStrings.savedTitle(language: nil)
    @objc public static let saveTitle:String = CommonStrings.saveTitle(language: nil)
    @objc public static let dimImagesTitle = WMFLocalizedString("dim-images", value: "Dim images", comment: "Label for image dimming setting")

    @objc public static let settingsTitle = WMFLocalizedString("settings-title", value: "Settings", comment: "Title of the view where app settings are displayed.\n{{Identical|Settings}}")
    @objc public static let placesTabTitle = WMFLocalizedString("places-title", value: "Places", comment: "Title of the Places screen shown on the places tab.")
    @objc public static let historyTabTitle = WMFLocalizedString("history-title", value: "History", comment: "Title of the history screen shown on history tab\n{{Identical|History}}")
    @objc public static let exploreTabTitle = WMFLocalizedString("home-title", value: "Explore", comment: "Title for home interface.\n{{Identical|Explore}}")
    @objc public static let savedTabTitle = WMFLocalizedString("saved-title", value: "Saved", comment: "Title of the saved screen shown on the saved tab\n{{Identical|Saved}}")
    
    @objc public static let onThisDayTitle = WMFLocalizedString("on-this-day-title", value: "On this day", comment: "Title for the 'On this day' feed section")
    
    @objc static public func savedTitle(language: String?) -> String {
        return WMFLocalizedString("button-saved-for-later", language: language, value: "Saved for later", comment: "Longer button text for already saved button used in various places.")
    }
    
    @objc static public func saveTitle(language: String?) -> String {
        return WMFLocalizedString("button-save-for-later", language: language, value: "Save for later", comment: "Longer button text for save button used in various places.")
    }
    
    @objc public static let shortShareTitle = WMFLocalizedString("action-share", value: "Share", comment: "Short title for the 'Share' action. Please use the shortest translation possible.\n{{Identical|Share}}")
    
    @objc public static let shortReadTitle = WMFLocalizedString("action-read", value: "Read", comment: "Title for the 'Read' action\n{{Identical|Read}}")
    
    @objc public static let dismissButtonTitle = WMFLocalizedString("announcements-dismiss", value: "Dismiss", comment: "Button text indicating a user wants to dismiss an announcement\n{{Identical|No thanks}}")
    
    @objc public static let textSizeSliderAccessibilityLabel = WMFLocalizedString("reading-themes-controls-accessibility-text-size-slider", value: "Text size slider", comment: "Accessibility label for the text size slider that adjusts article text size.")
    
    @objc public static let deleteActionTitle = WMFLocalizedStringWithDefaultValue("article-delete", nil, nil, "Delete", "Title of the action that deletes the selected articles article.")
    
    @objc public static let removeActionTitle = WMFLocalizedStringWithDefaultValue("action-remove", nil, nil, "Remove", "Title of the action that removes the selection from the current context.")
    
    @objc public static let moveToReadingListActionTitle = WMFLocalizedString("action-move-to-reading-list", value: "Move to reading list", comment: "Title of the action that moves the selected articles to another reading list")
    
    @objc public static let addToReadingListActionTitle = WMFLocalizedString("action-add-to-reading-list", value: "Add to reading list", comment: "Title of the action that adds a selected articles to a reading list")
    
    @objc public static let moveToActionTitle = WMFLocalizedString("action-move-to", value: "Move to…", comment: "Title of the action that moves the selection elsewhere.")
    
    @objc public static let addToActionTitle = WMFLocalizedString("action-add-to", value: "Add to…", comment: "Title of the action that adds the selection to something else.")
    
    @objc public static let shareActionTitle = WMFLocalizedStringWithDefaultValue("article-share", nil, nil, "Share", "Text of the article list row action shown on swipe which allows the user to choose the sharing option")

    @objc public static let updateActionTitle = WMFLocalizedStringWithDefaultValue("action-update", nil, nil, "Update", "Title of the update action.")
    @objc public static let cancelActionTitle = WMFLocalizedStringWithDefaultValue("action-cancel", nil, nil, "Cancel", "Title of the cancel action.")
     @objc public static let sortActionTitle = WMFLocalizedStringWithDefaultValue("action-sort", nil, nil, "Sort", "Title of the sort action.")

    @objc public static let nextTitle = WMFLocalizedStringWithDefaultValue("button-next", nil, nil, "Next", "Button text for next button used in various places.\n{{Identical|Next}}")
    @objc public static let skipTitle = WMFLocalizedStringWithDefaultValue("button-skip", nil, nil, "Skip", "Button text for skip button used in various places.")
    
    @objc public static let privacyPolicyURLString = "https://m.wikimediafoundation.org/wiki/Privacy_policy"

    @objc public static let myLanguages = WMFLocalizedString("settings-my-languages", value: "My languages", comment: "Title for list of user's preferred languages")
    @objc public static let readingPreferences = WMFLocalizedString("settings-appearance", value: "Reading preferences", comment: "Title of the reading preferences screen.")
    @objc public static let settingsStorageAndSyncing = WMFLocalizedString("settings-storage-and-syncing-title", value: "Saved articles storage and syncing", comment: "Title of the saved articles storage and syncing settings screen")

    @objc public static let wikipediaLanguages = WMFLocalizedString("languages-wikipedia", value: "Wikipedia languages", comment: "Title for list of Wikipedia languages")
    
    @objc public static let unknownError = WMFLocalizedString("error-unknown", value: "An unknown error occurred", comment: "Message displayed when an unknown error occurred")
    
    @objc public static let readingListsDefaultListTitle = WMFLocalizedString("reading-lists-default-list-title", value: "Saved", comment: "The title of the default saved pages list\n{{Identical|Saved}}")

    @objc public static let localizedEnableLocationTitle = WMFLocalizedString("places-enable-location-title", value:"Explore articles near your location by enabling Location Access", comment:"Explains that you can explore articles near you by enabling location access. \"Location\" should be the same term, which is used in the device settings, under \"Privacy\".")
    @objc public static let localizedEnableLocationExploreTitle = WMFLocalizedString("explore-enable-location-title", value:"Explore articles near your current location", comment:"Explains that you can explore articles near your current location. \"Location\" should be the same term, which is used in the device settings, under \"Privacy\".")
    @objc public static let localizedEnableLocationDescription = WMFLocalizedString("places-enable-location-description", value:"Access to your location is available only when the app or one of its features is visible on your screen.", comment:"Describes that access to your location is only used when the app or one of its features is on the screen")
    @objc public static let localizedEnableLocationButtonTitle = WMFLocalizedString("places-enable-location-action-button-title", value:"Enable location", comment:"Button title to enable location access")
    
    @objc public static let readingListLoginSubtitle =  WMFLocalizedString("reading-list-login-subtitle", value:"Log in or create an account to allow your saved articles and reading lists to be synced across devices and saved to your user preferences.", comment:"Subtitle explaining that saved articles and reading lists can be synced across devices.")
    @objc public static let readingListLoginButtonTitle = WMFLocalizedString("reading-list-login-button-title", value:"Log in to sync your saved articles", comment:"Title for button to login to sync saved articles and reading lists.")
    
    @objc public static let readingListDoNotKeepSubtitle =  WMFLocalizedString("reading-list-do-not-keep-button-title", value:"No, delete articles from device", comment:"Title for button to remove saved articles from device.")

    @objc public static let readingListsDefaultListDescription = WMFLocalizedString("reading-lists-default-list-description", value: "Default list for your saved articles", comment: "The description of the default saved pages list.")
    
     @objc public static let eraseAllSavedArticles = WMFLocalizedString("settings-storage-and-syncing-erase-saved-articles-title", value: "Erase saved articles", comment: "Title of the settings option that enables erasing saved articles")
}
