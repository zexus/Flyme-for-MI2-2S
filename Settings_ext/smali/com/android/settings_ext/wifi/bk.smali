.class Lcom/android/settings_ext/wifi/bk;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aya:Lcom/android/settings_ext/wifi/bh;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/bh;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/settings_ext/wifi/bk;->aya:Lcom/android/settings_ext/wifi/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bk;->aya:Lcom/android/settings_ext/wifi/bh;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/bh;->b(Lcom/android/settings_ext/wifi/bh;)V

    .line 220
    return-void
.end method
