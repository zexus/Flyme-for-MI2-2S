.class public Lcom/android/settings_ext/nfc/PaymentBackend;
.super Ljava/lang/Object;
.source "PaymentBackend.java"


# instance fields
.field private final adG:Landroid/nfc/cardemulation/CardEmulation;

.field private final mAdapter:Landroid/nfc/NfcAdapter;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/settings_ext/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/nfc/PaymentBackend;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 50
    iget-object v0, p0, Lcom/android/settings_ext/nfc/PaymentBackend;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/nfc/PaymentBackend;->adG:Landroid/nfc/cardemulation/CardEmulation;

    .line 51
    return-void
.end method


# virtual methods
.method aH(Z)V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings_ext/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_payment_foreground"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 90
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings_ext/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_payment_default_component"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 106
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public qq()Ljava/util/List;
    .locals 7

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ext/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 55
    iget-object v0, p0, Lcom/android/settings_ext/nfc/PaymentBackend;->adG:Landroid/nfc/cardemulation/CardEmulation;

    const-string v1, "payment"

    invoke-virtual {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    if-nez v0, :cond_0

    move-object v0, v1

    .line 75
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/nfc/PaymentBackend;->qs()Landroid/content/ComponentName;

    move-result-object v3

    .line 63
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 64
    new-instance v5, Lcom/android/settings_ext/nfc/PaymentBackend$PaymentAppInfo;

    invoke-direct {v5}, Lcom/android/settings_ext/nfc/PaymentBackend$PaymentAppInfo;-><init>()V

    .line 65
    invoke-virtual {v0, v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settings_ext/nfc/PaymentBackend$PaymentAppInfo;->adH:Landroid/graphics/drawable/Drawable;

    .line 66
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settings_ext/nfc/PaymentBackend$PaymentAppInfo;->kk:Ljava/lang/CharSequence;

    .line 67
    iget-object v6, v5, Lcom/android/settings_ext/nfc/PaymentBackend$PaymentAppInfo;->kk:Ljava/lang/CharSequence;

    if-nez v6, :cond_1

    .line 68
    invoke-virtual {v0, v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settings_ext/nfc/PaymentBackend$PaymentAppInfo;->kk:Ljava/lang/CharSequence;

    .line 70
    :cond_1
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/settings_ext/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    .line 71
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settings_ext/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    .line 72
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 75
    goto :goto_0
.end method

.method qr()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ext/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_payment_foreground"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 82
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method qs()Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings_ext/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_payment_default_component"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
