.class Lcom/android/settings_ext/notification/AppNotificationSettings$1;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic adT:Lcom/android/settings_ext/notification/AppNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/AppNotificationSettings;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings_ext/notification/AppNotificationSettings$1;->adT:Lcom/android/settings_ext/notification/AppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings_ext/notification/AppNotificationSettings$1;->adT:Lcom/android/settings_ext/notification/AppNotificationSettings;

    invoke-static {v0}, Lcom/android/settings_ext/notification/AppNotificationSettings;->b(Lcom/android/settings_ext/notification/AppNotificationSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/notification/AppNotificationSettings$1;->adT:Lcom/android/settings_ext/notification/AppNotificationSettings;

    invoke-static {v1}, Lcom/android/settings_ext/notification/AppNotificationSettings;->a(Lcom/android/settings_ext/notification/AppNotificationSettings;)Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->aeP:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void
.end method
