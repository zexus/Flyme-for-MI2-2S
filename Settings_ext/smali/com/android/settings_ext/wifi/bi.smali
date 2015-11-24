.class Lcom/android/settings_ext/wifi/bi;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# instance fields
.field final synthetic aya:Lcom/android/settings_ext/wifi/bh;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/bh;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/settings_ext/wifi/bi;->aya:Lcom/android/settings_ext/wifi/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bi;->aya:Lcom/android/settings_ext/wifi/bh;

    invoke-static {v0, p1}, Lcom/android/settings_ext/wifi/bh;->a(Lcom/android/settings_ext/wifi/bh;Landroid/nfc/Tag;)V

    .line 143
    return-void
.end method
