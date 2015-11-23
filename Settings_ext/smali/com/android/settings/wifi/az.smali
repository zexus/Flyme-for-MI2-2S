.class Lcom/android/settings_ext/wifi/az;
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
    .line 63
    iput-object p1, p0, Lcom/android/settings_ext/wifi/az;->awG:Lcom/android/settings_ext/wifi/WifiShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ext/wifi/az;->awG:Lcom/android/settings_ext/wifi/WifiShareActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ext/wifi/WifiShareActivity;->a(Lcom/android/settings_ext/wifi/WifiShareActivity;Z)V

    .line 67
    return-void
.end method
