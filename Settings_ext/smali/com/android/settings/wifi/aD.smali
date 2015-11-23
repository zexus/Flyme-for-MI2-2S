.class Lcom/android/settings_ext/wifi/aD;
.super Ljava/lang/Object;
.source "WifiShareUploadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic awL:Z

.field final synthetic awM:Lcom/android/settings_ext/wifi/WifiShareUploadFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/WifiShareUploadFragment;Z)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings_ext/wifi/aD;->awM:Lcom/android/settings_ext/wifi/WifiShareUploadFragment;

    iput-boolean p2, p0, Lcom/android/settings_ext/wifi/aD;->awL:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/settings_ext/wifi/aD;->awM:Lcom/android/settings_ext/wifi/WifiShareUploadFragment;

    iget-boolean v0, p0, Lcom/android/settings_ext/wifi/aD;->awL:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings_ext/wifi/WifiShareUploadFragment;->a(Lcom/android/settings_ext/wifi/WifiShareUploadFragment;Z)V

    .line 127
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
