.class public Lcom/android/settings/nfc/NfcSeRoute;
.super Ljava/lang/Object;
.source "NfcSeRoute.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Landroid/preference/ListPreference;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
