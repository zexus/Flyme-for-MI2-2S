.class final Lcom/android/settings_ext/notification/NotificationSettings$H;
.super Landroid/os/Handler;
.source "NotificationSettings.java"


# instance fields
.field final synthetic afn:Lcom/android/settings_ext/notification/NotificationSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/notification/NotificationSettings;)V
    .locals 1

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/settings_ext/notification/NotificationSettings$H;->afn:Lcom/android/settings_ext/notification/NotificationSettings;

    .line 470
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 471
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/notification/NotificationSettings;Lcom/android/settings_ext/notification/NotificationSettings$1;)V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lcom/android/settings_ext/notification/NotificationSettings$H;-><init>(Lcom/android/settings_ext/notification/NotificationSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 475
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 489
    :goto_0
    return-void

    .line 477
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings$H;->afn:Lcom/android/settings_ext/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationSettings;->b(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 480
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings$H;->afn:Lcom/android/settings_ext/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationSettings;->d(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 483
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings$H;->afn:Lcom/android/settings_ext/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationSettings;->n(Lcom/android/settings_ext/notification/NotificationSettings;)Lcom/android/settings_ext/notification/NotificationSettings$VolumePreferenceCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ext/notification/NotificationSettings$VolumePreferenceCallback;->stopSample()V

    goto :goto_0

    .line 486
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings$H;->afn:Lcom/android/settings_ext/notification/NotificationSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/settings_ext/notification/NotificationSettings;->b(Lcom/android/settings_ext/notification/NotificationSettings;I)V

    goto :goto_0

    .line 475
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
