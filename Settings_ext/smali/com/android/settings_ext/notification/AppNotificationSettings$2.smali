.class Lcom/android/settings_ext/notification/AppNotificationSettings$2;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic adT:Lcom/android/settings_ext/notification/AppNotificationSettings;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/AppNotificationSettings;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/settings_ext/notification/AppNotificationSettings$2;->adT:Lcom/android/settings_ext/notification/AppNotificationSettings;

    iput-object p2, p0, Lcom/android/settings_ext/notification/AppNotificationSettings$2;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings_ext/notification/AppNotificationSettings$2;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 168
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/android/settings_ext/notification/AppNotificationSettings$2;->adT:Lcom/android/settings_ext/notification/AppNotificationSettings;

    invoke-static {v1}, Lcom/android/settings_ext/notification/AppNotificationSettings;->c(Lcom/android/settings_ext/notification/AppNotificationSettings;)Lcom/android/settings_ext/notification/NotificationAppList$Backend;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/notification/AppNotificationSettings$2;->val$pkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings_ext/notification/AppNotificationSettings$2;->val$uid:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings_ext/notification/NotificationAppList$Backend;->a(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method
