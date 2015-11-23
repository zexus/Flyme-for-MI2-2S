.class Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter$1;
.super Ljava/lang/Object;
.source "NotificationAppList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aeU:Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

.field final synthetic aeV:Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter;Lcom/android/settings_ext/notification/NotificationAppList$AppRow;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter$1;->aeV:Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter;

    iput-object p2, p0, Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter$1;->aeU:Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter$1;->aeV:Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter;

    iget-object v0, v0, Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter;->aeO:Lcom/android/settings_ext/notification/NotificationAppList;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationAppList;->b(Lcom/android/settings_ext/notification/NotificationAppList;)Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "app_package"

    iget-object v3, p0, Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter$1;->aeU:Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    iget-object v3, v3, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "app_uid"

    iget-object v3, p0, Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter$1;->aeU:Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    iget v3, v3, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "has_settings_intent"

    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter$1;->aeU:Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    iget-object v0, v0, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->aeP:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "settings_intent"

    iget-object v3, p0, Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter$1;->aeU:Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    iget-object v3, v3, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->aeP:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 298
    return-void

    .line 292
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
