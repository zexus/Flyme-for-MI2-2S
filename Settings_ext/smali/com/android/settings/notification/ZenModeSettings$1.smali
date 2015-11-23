.class final Lcom/android/settings/notification/ZenModeSettings$1;
.super Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;
.source "ZenModeSettings.java"


# direct methods
.method varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 0

    .prologue
    .line 90
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    packed-switch p2, :pswitch_data_0

    .line 98
    const v0, 0x7f0909c3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 94
    :pswitch_0
    const v0, 0x7f0909c5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :pswitch_1
    const v0, 0x7f0909c4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
