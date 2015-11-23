.class Lcom/android/settings/nfc/PaymentSettings$1;
.super Ljava/lang/Object;
.source "PaymentSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic adL:Lcom/android/settings/nfc/PaymentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/PaymentSettings;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings/nfc/PaymentSettings$1;->adL:Lcom/android/settings/nfc/PaymentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$1;->adL:Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090944

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$1;->adL:Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v1}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/cF;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 131
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 132
    const/high16 v0, 0x10800000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 134
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$1;->adL:Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/PaymentSettings;->startActivity(Landroid/content/Intent;)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    const-string v0, "PaymentSettings"

    const-string v1, "Help url not set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
