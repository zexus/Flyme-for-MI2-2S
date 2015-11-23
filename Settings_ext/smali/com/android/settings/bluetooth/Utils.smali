.class final Lcom/android/settings_ext/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static a(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 2

    .prologue
    const v1, 0x104000a

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 76
    :goto_0
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p1, p4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 79
    return-object p1

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 72
    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 73
    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 113
    iput-object p1, v0, Lcom/android/settings_ext/search/n;->className:Ljava/lang/String;

    .line 114
    iput-object p2, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 115
    iput-object p3, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 116
    iput p4, v0, Lcom/android/settings_ext/search/n;->iconResId:I

    .line 117
    iput-boolean p5, v0, Lcom/android/settings_ext/search/n;->enabled:Z

    .line 119
    invoke-static {p0}, Lcom/android/settings_ext/search/e;->bn(Landroid/content/Context;)Lcom/android/settings_ext/search/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/search/e;->c(Landroid/provider/SearchIndexableData;)V

    .line 120
    return-void
.end method

.method public static bd(I)I
    .locals 1

    .prologue
    .line 43
    packed-switch p0, :pswitch_data_0

    .line 53
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 45
    :pswitch_0
    const v0, 0x7f0900e5

    goto :goto_0

    .line 47
    :pswitch_1
    const v0, 0x7f0900ec

    goto :goto_0

    .line 49
    :pswitch_2
    const v0, 0x7f0900ea

    goto :goto_0

    .line 51
    :pswitch_3
    const v0, 0x7f0900eb

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static d(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {p0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->ai(Landroid/content/Context;)Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->nc()Landroid/content/Context;

    move-result-object v2

    .line 96
    invoke-virtual {v1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->nd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09021a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
