.class Lcom/android/settings/nfc/PaymentSettings$2;
.super Landroid/os/Handler;
.source "PaymentSettings.java"


# instance fields
.field final synthetic adL:Lcom/android/settings/nfc/PaymentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/PaymentSettings;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/settings/nfc/PaymentSettings$2;->adL:Lcom/android/settings/nfc/PaymentSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$2;->adL:Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentSettings;->refresh()V

    .line 183
    return-void
.end method
