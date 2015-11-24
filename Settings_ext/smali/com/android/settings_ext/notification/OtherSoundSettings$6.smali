.class final Lcom/android/settings_ext/notification/OtherSoundSettings$6;
.super Lcom/android/settings_ext/notification/SettingPref;
.source "OtherSoundSettings.java"


# direct methods
.method varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 0

    .prologue
    .line 132
    invoke-direct/range {p0 .. p5}, Lcom/android/settings_ext/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    packed-switch p2, :pswitch_data_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 143
    :pswitch_0
    const v0, 0x7f0909da

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    .line 145
    :pswitch_1
    const v0, 0x7f0909db

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 147
    :pswitch_2
    const v0, 0x7f0909dc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public be(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 136
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
