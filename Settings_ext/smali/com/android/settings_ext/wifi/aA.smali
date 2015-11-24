.class Lcom/android/settings_ext/wifi/aA;
.super Ljava/lang/Object;
.source "WifiShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic awG:Lcom/android/settings_ext/wifi/WifiShareActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/WifiShareActivity;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings_ext/wifi/aA;->awG:Lcom/android/settings_ext/wifi/WifiShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/wifi/aA;->awG:Lcom/android/settings_ext/wifi/WifiShareActivity;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/aA;->awG:Lcom/android/settings_ext/wifi/WifiShareActivity;

    invoke-static {v0, v1}, Lcom/android/settings_ext/wifi/aG;->a(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    .line 74
    return-void
.end method
