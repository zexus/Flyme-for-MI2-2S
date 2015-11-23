.class Lcom/android/settings_ext/wifi/aM;
.super Ljava/lang/Object;
.source "WifiStatusTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic axl:Lcom/android/settings_ext/wifi/WifiStatusTest;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/WifiStatusTest;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/settings_ext/wifi/aM;->axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/settings_ext/wifi/aM;->axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/WifiStatusTest;->m(Lcom/android/settings_ext/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/wifi/aM;->axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

    invoke-static {v1}, Lcom/android/settings_ext/wifi/WifiStatusTest;->l(Lcom/android/settings_ext/wifi/WifiStatusTest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/android/settings_ext/wifi/aM;->axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/WifiStatusTest;->o(Lcom/android/settings_ext/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/wifi/aM;->axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

    invoke-static {v1}, Lcom/android/settings_ext/wifi/WifiStatusTest;->n(Lcom/android/settings_ext/wifi/WifiStatusTest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/android/settings_ext/wifi/aM;->axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/WifiStatusTest;->q(Lcom/android/settings_ext/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/wifi/aM;->axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

    invoke-static {v1}, Lcom/android/settings_ext/wifi/WifiStatusTest;->p(Lcom/android/settings_ext/wifi/WifiStatusTest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    return-void
.end method
