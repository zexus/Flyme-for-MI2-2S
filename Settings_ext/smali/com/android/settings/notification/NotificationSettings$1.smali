.class Lcom/android/settings_ext/notification/NotificationSettings$1;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic afn:Lcom/android/settings_ext/notification/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/settings_ext/notification/NotificationSettings$1;->afn:Lcom/android/settings_ext/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 215
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings$1;->afn:Lcom/android/settings_ext/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationSettings;->b(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings$1;->afn:Lcom/android/settings_ext/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationSettings;->c(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/settings_ext/notification/NotificationSettings;->h(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings$1;->afn:Lcom/android/settings_ext/notification/NotificationSettings;

    invoke-static {v1}, Lcom/android/settings_ext/notification/NotificationSettings;->a(Lcom/android/settings_ext/notification/NotificationSettings;)Lcom/android/settings_ext/notification/NotificationSettings$H;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ext/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings$1;->afn:Lcom/android/settings_ext/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationSettings;->d(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings$1;->afn:Lcom/android/settings_ext/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationSettings;->c(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/settings_ext/notification/NotificationSettings;->h(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_1

    .line 226
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings$1;->afn:Lcom/android/settings_ext/notification/NotificationSettings;

    invoke-static {v1}, Lcom/android/settings_ext/notification/NotificationSettings;->a(Lcom/android/settings_ext/notification/NotificationSettings;)Lcom/android/settings_ext/notification/NotificationSettings$H;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/android/settings_ext/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 229
    :cond_1
    return-void
.end method
