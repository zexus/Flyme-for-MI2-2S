.class Lcom/android/settings_ext/wifi/U;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic avj:Lcom/android/settings_ext/wifi/T;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/T;)V
    .locals 0

    .prologue
    .line 1534
    iput-object p1, p0, Lcom/android/settings_ext/wifi/U;->avj:Lcom/android/settings_ext/wifi/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/android/settings_ext/wifi/U;->avj:Lcom/android/settings_ext/wifi/T;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/T;->uf()V

    .line 1537
    return-void
.end method
