.class Lcom/android/settings/notification/AppNotificationSettings$3;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic adT:Lcom/android/settings/notification/AppNotificationSettings;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/settings/notification/AppNotificationSettings;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$3;->adT:Lcom/android/settings/notification/AppNotificationSettings;

    iput-object p2, p0, Lcom/android/settings/notification/AppNotificationSettings$3;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/notification/AppNotificationSettings$3;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 176
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$3;->adT:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/AppNotificationSettings;->c(Lcom/android/settings/notification/AppNotificationSettings;)Lcom/android/settings/notification/NotificationAppList$Backend;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings$3;->val$pkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/notification/AppNotificationSettings$3;->val$uid:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings/notification/NotificationAppList$Backend;->b(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method
