.class final Lcom/android/settings/notification/OtherSoundSettings$5;
.super Lcom/android/settings/notification/SettingPref;
.source "OtherSoundSettings.java"


# direct methods
.method varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 0

    .prologue
    .line 111
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    packed-switch p2, :pswitch_data_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 121
    :pswitch_0
    const v0, 0x7f0909d8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :pswitch_1
    const v0, 0x7f0909d9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public be(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 114
    invoke-static {p1}, Lcom/android/settings/notification/OtherSoundSettings;->bc(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
