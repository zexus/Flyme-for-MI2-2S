.class Lcom/android/settings/wifi/ax;
.super Ljava/lang/Object;
.source "WifiSetupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic awC:Lcom/android/settings/wifi/av;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/av;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/settings/wifi/ax;->awC:Lcom/android/settings/wifi/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/settings/wifi/ax;->awC:Lcom/android/settings/wifi/av;

    invoke-virtual {v0}, Lcom/android/settings/wifi/av;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSetupActivity;

    .line 295
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSetupActivity;->di(I)V

    .line 296
    return-void
.end method
